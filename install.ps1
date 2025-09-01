# Axiomantic PowerShell Installation Script
# Compatible with Windows PowerShell 5.1+ and PowerShell 7+

[CmdletBinding()]
param(
    [string]$TargetDirectory = $null,
    [switch]$Help
)

$ErrorActionPreference = "Stop"

if ($Help) {
    Write-Host @"
Axiomantic Installation Script for Windows

Usage:
    .\install.ps1 [TargetDirectory]

    OR pipe from web:
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elijahr/axiomantic/devel/dist/install.ps1" -UseBasicParsing | Invoke-Expression

Parameters:
    TargetDirectory  Optional path to install Axiomantic (defaults to current directory)
    -Help           Show this help message

Examples:
    .\install.ps1                    # Install to current directory
    .\install.ps1 C:\MyProject       # Install to specific directory
"@
    exit 0
}

# Detect if script is being piped from web
$IsPiped = $false
if ($MyInvocation.MyCommand.Path -eq $null) {
    $IsPiped = $true
    $OriginalDir = Get-Location
    Write-Host "Downloading Axiomantic..." -ForegroundColor Green

    # Create temp directory
    $TempDir = [System.IO.Path]::GetTempPath() + [System.Guid]::NewGuid().ToString()
    New-Item -ItemType Directory -Path $TempDir -Force | Out-Null
    Set-Location $TempDir

    try {
        # Download and extract archive
        $ArchiveUrl = "https://codeload.github.com/elijahr/axiomantic/zip/refs/heads/devel"
        $ZipPath = Join-Path $TempDir "axiomantic.zip"

        # Use Invoke-WebRequest for download
        Invoke-WebRequest -Uri $ArchiveUrl -OutFile $ZipPath -UseBasicParsing

        # Extract using built-in Expand-Archive (available in PS 5.0+)
        Expand-Archive -Path $ZipPath -DestinationPath $TempDir -Force

        # Move dist directory to expected location
        $ExtractedDir = Get-ChildItem -Path $TempDir -Directory | Where-Object { $_.Name.StartsWith("axiomantic-") } | Select-Object -First 1
        if ($ExtractedDir) {
            $DistSourcePath = Join-Path $ExtractedDir.FullName "dist"
            $DistPath = Join-Path $TempDir "dist"
            Move-Item -Path $DistSourcePath -Destination $DistPath -Force
            Remove-Item -Path $ExtractedDir.FullName -Recurse -Force
        } else {
            throw "Could not find extracted axiomantic directory"
        }

        Remove-Item -Path $ZipPath -Force
        $DistDir = $DistPath

    } catch {
        Write-Error "Failed to download Axiomantic: $($_.Exception.Message)"
        exit 1
    }
} else {
    # Script is being run directly
    $ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

    # Check if we're running from repo root or dist directory
    if (Test-Path (Join-Path $ScriptDir "dist")) {
        # Running from repo root
        $DistDir = Join-Path $ScriptDir "dist"
    } elseif (Test-Path (Join-Path $ScriptDir "axiomantic")) {
        # Running from dist directory
        $DistDir = $ScriptDir
    } else {
        Write-Error "Cannot find axiomantic directory structure"
        exit 1
    }
}

# Check if source directory exists
if (!(Test-Path $DistDir)) {
    Write-Error "dist directory not found at $DistDir"
    exit 1
}

# Determine target directory
if ($TargetDirectory) {
    $TargetDir = $TargetDirectory
} elseif ($IsPiped) {
    # Piped installation - default to original directory since stdin not available
    Write-Host ""
    Write-Host "Axiomantic Installation" -ForegroundColor Cyan
    Write-Host "======================="
    Write-Host ""
    Write-Host "Installing to directory where command was run ($OriginalDir)" -ForegroundColor Gray
    Write-Host "To install elsewhere, download the script and run: .\install.ps1 C:\path\to\directory" -ForegroundColor Gray
    $TargetDir = $OriginalDir
} else {
    # Direct execution without argument - prompt for directory
    Write-Host ""
    Write-Host "Axiomantic Installation" -ForegroundColor Cyan
    Write-Host "======================="
    Write-Host ""
    $Response = Read-Host "Install to current directory? [Y/n]"
    if ($Response -match '^[Nn]$') {
        $TargetDir = Read-Host "Enter installation directory"
        if ([string]::IsNullOrWhiteSpace($TargetDir)) {
            Write-Error "No directory specified"
            exit 1
        }
    } else {
        $TargetDir = Get-Location
    }
}

# Create target directory if it doesn't exist
if (!(Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
}

# Convert to absolute path for cleaner output
$TargetDir = Resolve-Path $TargetDir

Write-Host ""
Write-Host "Installing Axiomantic for Claude Code and OpenCode..." -ForegroundColor Green
Write-Host ""

# Install AGENT.md
$AgentSourcePath = Join-Path $DistDir "axiomantic\AGENT.md"
$AgentTargetPath = Join-Path $TargetDir "AGENT.md"

if (Test-Path $AgentTargetPath) {
    if ((Get-Item $AgentTargetPath).Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
        Remove-Item $AgentTargetPath -Force
    } else {
        $BackupPath = Join-Path $TargetDir "AGENT.md.bak"
        Move-Item $AgentTargetPath $BackupPath -Force
        Write-Host "⚠️  Existing AGENT.md found, renamed to AGENT.md.bak" -ForegroundColor Yellow
    }
}
Copy-Item $AgentSourcePath $AgentTargetPath -Force
Write-Host "✓ Installed AGENT.md to $AgentTargetPath" -ForegroundColor Green

# Create CLAUDE.md symlink
$ClaudeTargetPath = Join-Path $TargetDir "CLAUDE.md"
if (Test-Path $ClaudeTargetPath) {
    if ((Get-Item $ClaudeTargetPath).Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
        Remove-Item $ClaudeTargetPath -Force
    } else {
        $BackupPath = Join-Path $TargetDir "CLAUDE.md.bak"
        Move-Item $ClaudeTargetPath $BackupPath -Force
        Write-Host "⚠️  Existing CLAUDE.md found, renamed to CLAUDE.md.bak" -ForegroundColor Yellow
    }
}

# Create symlink (requires elevated permissions on older Windows versions)
try {
    cmd /c mklink "$ClaudeTargetPath" "AGENT.md" 2>$null
    Write-Host "✓ Created CLAUDE.md symlink" -ForegroundColor Green
} catch {
    # Fallback to copy if symlink creation fails
    Copy-Item $AgentTargetPath $ClaudeTargetPath -Force
    Write-Host "✓ Created CLAUDE.md copy (symlink failed)" -ForegroundColor Yellow
}

# Create AGENTS.md symlink
$AgentsTargetPath = Join-Path $TargetDir "AGENTS.md"
if (Test-Path $AgentsTargetPath) {
    if ((Get-Item $AgentsTargetPath).Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
        Remove-Item $AgentsTargetPath -Force
    } else {
        $BackupPath = Join-Path $TargetDir "AGENTS.md.bak"
        Move-Item $AgentsTargetPath $BackupPath -Force
        Write-Host "⚠️  Existing AGENTS.md found, renamed to AGENTS.md.bak" -ForegroundColor Yellow
    }
}

try {
    cmd /c mklink "$AgentsTargetPath" "AGENT.md" 2>$null
    Write-Host "✓ Created AGENTS.md symlink" -ForegroundColor Green
} catch {
    # Fallback to copy if symlink creation fails
    Copy-Item $AgentTargetPath $AgentsTargetPath -Force
    Write-Host "✓ Created AGENTS.md copy (symlink failed)" -ForegroundColor Yellow
}

# Handle existing axiomantic directory
$ExistingAxiomanticDir = Join-Path $TargetDir "axiomantic"
if (Test-Path $ExistingAxiomanticDir) {
    $BackupPath = Join-Path $TargetDir "axiomantic.bak"
    Move-Item $ExistingAxiomanticDir $BackupPath -Force
    Write-Host "⚠️  Existing axiomantic/ directory found, renamed to axiomantic.bak" -ForegroundColor Yellow
}

# Create .axiomantic directory and copy files
$AxiomanticTargetDir = Join-Path $TargetDir ".axiomantic"
New-Item -ItemType Directory -Path $AxiomanticTargetDir -Force | Out-Null

$CommandsSourcePath = Join-Path $DistDir "axiomantic\commands"
$CommandsTargetPath = Join-Path $AxiomanticTargetDir "commands"
Copy-Item $CommandsSourcePath $CommandsTargetPath -Recurse -Force
Write-Host "✓ Installed Axiomantic commands to .axiomantic/commands/" -ForegroundColor Green

$SharedSourcePath = Join-Path $DistDir "axiomantic\shared"
$SharedTargetPath = Join-Path $AxiomanticTargetDir "shared"
Copy-Item $SharedSourcePath $SharedTargetPath -Recurse -Force
Write-Host "✓ Installed Axiomantic shared modules to .axiomantic/shared/" -ForegroundColor Green

# Create .claude/commands directory and symlinks
$ClaudeCommandsDir = Join-Path $TargetDir ".claude\commands"
New-Item -ItemType Directory -Path $ClaudeCommandsDir -Force | Out-Null

Get-ChildItem -Path $CommandsTargetPath -File | ForEach-Object {
    $CommandName = $_.Name
    $TargetPath = Join-Path $ClaudeCommandsDir $CommandName
    $RelativePath = "..\..\axiomantic\commands\$CommandName"

    if (Test-Path $TargetPath) {
        if ((Get-Item $TargetPath).Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
            Remove-Item $TargetPath -Force
        } else {
            $BackupPath = "$TargetPath.bak"
            Move-Item $TargetPath $BackupPath -Force
            Write-Host "⚠️  Existing .claude/commands/$CommandName found, renamed to $CommandName.bak" -ForegroundColor Yellow
        }
    }

    try {
        cmd /c mklink "$TargetPath" "$RelativePath" 2>$null
        Write-Host "✓ Created claude symlink for $CommandName" -ForegroundColor Green
    } catch {
        Copy-Item $_.FullName $TargetPath -Force
        Write-Host "✓ Created claude copy for $CommandName (symlink failed)" -ForegroundColor Yellow
    }
}

# Create .opencode/command directory and symlinks
$OpenCodeCommandsDir = Join-Path $TargetDir ".opencode\command"
New-Item -ItemType Directory -Path $OpenCodeCommandsDir -Force | Out-Null

Get-ChildItem -Path $CommandsTargetPath -File | ForEach-Object {
    $CommandName = $_.Name
    $TargetPath = Join-Path $OpenCodeCommandsDir $CommandName
    $RelativePath = "..\..\axiomantic\commands\$CommandName"

    if (Test-Path $TargetPath) {
        if ((Get-Item $TargetPath).Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
            Remove-Item $TargetPath -Force
        } else {
            $BackupPath = "$TargetPath.bak"
            Move-Item $TargetPath $BackupPath -Force
            Write-Host "⚠️  Existing .opencode/command/$CommandName found, renamed to $CommandName.bak" -ForegroundColor Yellow
        }
    }

    try {
        cmd /c mklink "$TargetPath" "$RelativePath" 2>$null
        Write-Host "✓ Created opencode symlink for $CommandName" -ForegroundColor Green
    } catch {
        Copy-Item $_.FullName $TargetPath -Force
        Write-Host "✓ Created opencode copy for $CommandName (symlink failed)" -ForegroundColor Yellow
    }
}

# Cleanup temp directory if piped
if ($IsPiped -and (Test-Path $TempDir)) {
    Set-Location $HOME
    Remove-Item -Path $TempDir -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Host ""
Write-Host "🎉 Axiomantic installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Files installed:" -ForegroundColor White
Write-Host "  • AGENT.md - Base instruction file" -ForegroundColor Gray
Write-Host "  • CLAUDE.md -> AGENT.md (symlink for Claude Code)" -ForegroundColor Gray
Write-Host "  • AGENTS.md -> AGENT.md (symlink for OpenCode)" -ForegroundColor Gray
Write-Host "  • .axiomantic/commands/ - slash commands (/axi-validate, /axi-plan, /axi-feature, /axi-test, /axi-compress, /axi-rules, /axi-implement)" -ForegroundColor Gray
Write-Host "  • .axiomantic/shared/ - Modular instruction library with conditional loading" -ForegroundColor Gray
Write-Host "  • .claude/commands/ - Claude Code slash commands (symlinks to .axiomantic/commands/*)" -ForegroundColor Gray
Write-Host "  • .opencode/command/ - opencode slash commands (symlinks to .axiomantic/commands/*)" -ForegroundColor Gray
Write-Host ""
Write-Host "🎯 Both tools use the same AGENT.md file with conditional module loading." -ForegroundColor Cyan
Write-Host "   Contextual instructions are loaded based on task (source/test/docs/config)" -ForegroundColor Gray
Write-Host ""
Write-Host "Ready to use with Claude Code and OpenCode!" -ForegroundColor Green
