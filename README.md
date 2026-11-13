# Minimum Viable Harness

**Do it right the first time.**

One line. Every stack. Codex, Claude Code, Lovable, and whichever agent you downloaded this morning. Works anywhere you can read a sentence.

[Download HARNESS.md](https://raw.githubusercontent.com/wickett/MVH/main/HARNESS.md)

## Install

Inspect [install.sh](install.sh), then run it from the directory where you want the file. It won’t overwrite an existing harness.

```bash
cat install.sh | bash
```

## GitHub Actions

After checking out this repository, add a step like this to a job with Bash:

```yaml
- name: Install MVH
  shell: bash
  run: |
    mkdir -p "${RUNNER_TEMP}/mvh"
    cd "${RUNNER_TEMP}/mvh"
    bash "${GITHUB_WORKSPACE}/install.sh"
```

## System requirements

No dependencies, telemetry, network calls, or GPU requirements in the harness itself. The installer needs Bash. The harness doesn't run code or enforce anything.
