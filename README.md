# Dotfiles

My Personal dotfiles

## Neovim

```bash
# create symlink to nvim_test
ln -s nvim/ ~/.config/nvim_test
# run that directory instead of home manager
NVIM_APPNAME=nvim_test nvim
```

## Wezterm

```bash
wezterm --config-file ./wezterm/wezterm.lua
```

## Ghostty

```bash
XDG_CONFIG_HOME=/home/doink/projects/dotfiles ghostty
```

## Helix

```bash
hx -c ./helix/config.toml
```
