# Tmux Keybinds Reference

Complete reference for tmux keyboard shortcuts with custom configurations.

---

## 🎮 Prefix Key

- **`Ctrl+b`** - Default prefix (all commands below require pressing prefix first)

---

## 📋 Sessions

| Keybind | Description |
|---------|-------------|
| `Prefix + d` | Detach from current session |
| `Prefix + s` | List all sessions |
| `Prefix + $` | Rename current session |
| `Prefix + (` | Switch to previous session |
| `Prefix + )` | Switch to next session |
| `Prefix + Ctrl+l` | **[CUSTOM]** Fuzzy finder for sessions/windows (requires fzf) |

---

## 🪟 Windows

| Keybind | Description |
|---------|-------------|
| `Prefix + c` | Create new window |
| `Prefix + ,` | Rename current window |
| `Prefix + &` | Close current window (asks for confirmation) |
| `Prefix + n` | Go to next window |
| `Prefix + p` | Go to previous window |
| `Prefix + 0-9` | Switch to window by number |
| `Prefix + w` | List all windows |
| `Prefix + l` | Switch to last used window |

---

## ⬜ Panes

| Keybind | Description |
|---------|-------------|
| `Prefix + %` | Split vertically (creates pane on the right) |
| `Prefix + "` | Split horizontally (creates pane below) |
| `Prefix + x` | Close current pane (asks for confirmation) |
| `Prefix + z` | Toggle zoom on current pane |
| `Prefix + !` | Convert pane to window |
| `Prefix + {` | Move pane left |
| `Prefix + }` | Move pane right |
| `Prefix + o` | Go to next pane |
| `Prefix + ;` | Switch to last used pane |
| `Prefix + q` | Show pane numbers (type number to jump) |
| `Prefix + Arrow Keys` | Navigate between panes |
| `Prefix + Ctrl+Arrow Keys` | Resize panes (1 cell) |
| `Prefix + Alt+Arrow Keys` | Resize panes (5 cells) |
| `Prefix + Space` | Cycle through predefined layouts |

---

## 📝 Copy Mode (Vi Style)

| Keybind | Description |
|---------|-------------|
| `Prefix + [` | Enter copy mode (navigation) |
| `q` | Exit copy mode |
| `v` | **[CUSTOM]** Start visual selection |
| `y` | **[CUSTOM]** Copy selection to clipboard (uses pbcopy/xclip) |
| `h/j/k/l` | Navigate (left/down/up/right) |
| `Ctrl+u` | Scroll half page up |
| `Ctrl+d` | Scroll half page down |
| `g` | Go to beginning of history |
| `G` | Go to end of history |
| `/` | Search forward |
| `?` | Search backward |
| `n` | Next search result |
| `N` | Previous search result |

---

## 🔧 Configuration & Utilities

| Keybind | Description |
|---------|-------------|
| `Prefix + r` | **[CUSTOM]** Reload tmux configuration |
| `Prefix + ?` | List all keybindings |
| `Prefix + :` | Tmux command prompt |
| `Prefix + t` | Show clock |

---

## 💾 Plugins (Resurrect & Continuum)

| Keybind | Description |
|---------|-------------|
| `Prefix + Ctrl+s` | Manually save session (tmux-resurrect) |
| `Prefix + Ctrl+r` | Manually restore session (tmux-resurrect) |
| Auto-save | Every 5 minutes (configured in continuum) |
| Auto-restore | When tmux starts (configured in continuum) |

---

## 🔌 TPM (Plugin Manager)

| Keybind | Description |
|---------|-------------|
| `Prefix + I` | Install new plugins (capital I) |
| `Prefix + U` | Update plugins (capital U) |
| `Prefix + Alt+u` | Remove unlisted plugins |

---

## 📦 Installed Plugins

1. **tmux-sensible** - Sensible default settings for tmux
2. **tmux-resurrect** - Save and restore tmux sessions (survives system restart)
3. **tmux-continuum** - Automatic session saving and restoration

---

## ⚙️ Configuration Notes

- **Terminal:** `xterm-ghostty`
- **Mouse:** Disabled (`set -g mouse off`)
- **History:** 10,000 lines
- **Mode:** Vi keybindings
- **Base Index:** Windows and panes start at 1 (not 0)
- **Auto-renumber:** Windows are automatically renumbered when one is closed
- **Clipboard:** Copy with `y` uses `pbcopy` (macOS) - replace with `xclip` or `xsel` for Linux

---

## 🚀 Quick Tips

### Starting Tmux
```bash
tmux                    # Start new session
tmux new -s mysession   # Start named session
tmux attach             # Attach to last session
tmux attach -t mysession # Attach to named session
tmux ls                 # List all sessions
tmux kill-session -t mysession # Kill named session
```

### Common Workflows

**Split and Navigate:**
1. `Prefix + %` - Split vertically
2. `Prefix + "` - Split horizontally
3. `Prefix + Arrow Keys` - Navigate between panes

**Copy Text:**
1. `Prefix + [` - Enter copy mode
2. `v` - Start selection
3. Move with `h/j/k/l`
4. `y` - Copy to clipboard

**Session Management:**
1. `Prefix + d` - Detach from session
2. `tmux attach` - Reattach later
3. Sessions are automatically saved every 5 minutes
4. Sessions restore automatically on tmux start

---

## 🔗 Useful Links

- [Tmux GitHub](https://github.com/tmux/tmux)
- [TPM GitHub](https://github.com/tmux-plugins/tpm)
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)

---

**Last Updated:** Generated from tmux.conf configuration
