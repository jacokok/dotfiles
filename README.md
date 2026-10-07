# Dotfiles

This repository manages my personal configuration files (dotfiles) with [mise](https://mise.jdx.dev/). It contains shared settings plus environment-specific configurations for macOS and Omarchy.

## macOS

```sh
mise bootstrap -E macos --adopt git@github.com:jacokok/dotfiles.git
```

### Omarchy

```sh
mise bootstrap -E omarchy --adopt git@github.com:jacokok/dotfiles.git
```

The environment file selects the matching profile (`macos` or `omarchy`) and enables mise's `conf.d` configuration. Review the repository's settings before applying them on a machine; package bootstrap lists may install software.

## Repository layout

```text
config/
  config.toml                    # Shared mise tool versions and settings
  conf.d/
    dotfiles.toml                # Maps repository files to their home-directory targets
    global.toml                  # Shared mise configuration and history watcher
    packages/
      mise.macos.toml            # macOS package bootstrap list
      mise.omarchy.toml          # Omarchy package bootstrap list
config@macos/
  .miserc.toml                   # Selects the macOS profile
config@omarchy/
  .miserc.toml                   # Selects the Omarchy profile
```
