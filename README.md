# AstroNvim Template

**NOTE:** This is for AstroNvim v6+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## ⚙️ OpenCode

This configuration uses the [`opencode.nvim`](https://github.com/sudo-tee/opencode.nvim) plugin to chat with OpenCode from inside Neovim.

- **OpenCode CLI:** `opencode` v2.4.1 or newer (already on your `PATH`)
- **Plugin:** `sudo-tee/opencode.nvim` (revision locked in `lazy-lock.json`)
- **Theme:** `catppuccin` flavor `mocha`
- **Completion/picker integrations:** `blink.cmp` and `snacks.nvim` are enabled; `telescope.nvim`, `fzf-lua`, and `nvim-mini/mini.nvim` are optional

### Current OpenCode settings (`lua/plugins/opencode.lua`)

```lua
require('opencode').setup {
  default_mode = 'plan',
  ui = {
    window_width = 0.30,
  },
}
```

- `default_mode = 'plan'` — new sessions start in plan mode
- `window_width = 0.30` — panel opens at 30% of the editor width

## 🩺 Health check

To check the plugin and server status inside Neovim:

```vim
:checkhealth opencode
```

A healthy result shows the OpenCode CLI version, the server at `http://127.0.0.1:49374` being reachable, and the configuration loading without errors.
