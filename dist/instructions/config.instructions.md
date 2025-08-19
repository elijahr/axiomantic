---
applyTo: "none"
---

# Config & Build File Standards

### Error Prevention

- Fail fast w/ clear error messages
- Validate inputs at boundaries
- Use type hints & runtime validation
- Prefer explicit > implicit behavior

### Config Mgmt

- Use env-specific config files
- Validate config on startup
- Doc all config options
- Use secure defaults
- Never commit secrets | sensitive data
- Use config schemas when available

### Build & Deployment Standards

- Automate build 🔄
- Use reproducible builds
- Doc build req & steps
- Test builds in clean env
- Version config files appropriately