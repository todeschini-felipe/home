# Neovim Configuration

Personal Neovim setup using [Lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager. Leader key is `,`.

---

## Plugins

| Plugin | Purpose |
|--------|---------|
| [monokai-pro.nvim](https://github.com/loctvl842/monokai-pro.nvim) | Color scheme (Monokai Pro, black background) |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File tree explorer |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder (files, grep, buffers) |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Inline git hunk markers and actions |
| [neogit](https://github.com/NeogitOrg/neogit) | Git status, stage, commit, push/pull UI |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Visual diff browser and file history |
| [vim-easymotion](https://github.com/easymotion/vim-easymotion) | Fast cursor motion |
| [comfortable-motion.vim](https://github.com/yuttie/comfortable-motion.vim) | Smooth scrolling |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless navigation between Neovim splits and tmux panes |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and code parsing |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/formatter/linter installer |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge between Mason and nvim-lspconfig |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configuration |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | Completion engine (LSP, paths, buffer) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap hints and grouping |

---

## Dependencies

### System packages

```sh
# Debian/Ubuntu
sudo apt install git ripgrep fzf nodejs npm

# Arch
sudo pacman -S git ripgrep fzf nodejs npm
```

| Tool | Required by |
|------|------------|
| `git` | General, neogit, gitsigns |
| `ripgrep` | fzf-lua live grep |
| `fzf` | fzf-lua |
| `node` / `npm` | Neovim node host, some LSPs |
| `python3` | Neovim python host |
| Nerd Font | Icons in neo-tree, lualine, diagnostics |

### Node package

```sh
npm install -g neovim
```

### LSP servers (installed automatically via Mason on first launch)

| Server | Language |
|--------|---------|
| `clangd` | C / C++ |
| `pyright` | Python |

### TreeSitter parsers (installed automatically on first launch)

`lua`, `c`, `cpp`, `python`

---

## Installation

```sh
# Clone this repo to your Neovim config directory
git clone <repo-url> ~/.config/nvim

# Or symlink if you manage dotfiles separately
ln -sf /path/to/this/repo ~/.config/nvim
```

On first launch, Lazy.nvim bootstraps itself and installs all plugins automatically.

```sh
nvim
```

Mason will install LSP servers on first use via `:MasonInstall clangd pyright` or automatically via `mason-lspconfig`.

---

## Keybindings

### General

| Key | Action |
|-----|--------|
| `,w` | Save file |
| `,q` | Quit |
| `<Esc>` | Clear search highlight |

### Windows & Tabs

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Move between splits (also works across tmux panes) |
| `tk` | Next tab |
| `tj` | Previous tab |
| `th` | First tab |
| `tl` | Last tab |

### File Navigation

| Key | Action |
|-----|--------|
| `<C-p>` | Fuzzy find files (git files if in git repo) |
| `,fg` | Live grep across project |
| `,nn` | Toggle file tree |

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `,rn` | Rename symbol |
| `,ca` | Code action |
| `,fd` | Show line diagnostics |
| `[d` / `]d` | Previous / next diagnostic |
| `<C-space>` | Trigger completion |
| `<CR>` | Confirm completion |
| `<leader><leader>l` | Restart LSP |

### Git

| Key | Action |
|-----|--------|
| `,gs` | Git status (Neogit) |
| `,gd` | Open diffview |
| `,gh` | File history (diffview) |
| `]h` / `[h` | Next / previous hunk |
| `,hs` | Stage hunk |
| `,hr` | Reset hunk |
| `,hp` | Preview hunk |
| `,hb` | Blame current line |

### Neogit (inside the UI)

| Key | Action |
|-----|--------|
| `s` | Stage file / hunk |
| `u` | Unstage file / hunk |
| `c` | Commit |
| `p` | Push |
| `P` | Pull |
