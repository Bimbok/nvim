# 🌅 💤 Sunset LazyVim NVIM

## A Beautiful & Modern Neovim Configuration

This is my personal Neovim configuration, designed to be both aesthetically pleasing and highly functional for development. It's built on Lua and managed by the excellent `lazy.nvim` plugin manager. The goal is to create a comfortable, distraction-free environment that makes you *want* to code.

<img width="1854" height="1048" alt="Image" src="https://github.com/user-attachments/assets/3c6e5719-35d6-40b3-87b1-788e05992223" />
<img width="1854" height="1048" alt="Image" src="https://github.com/user-attachments/assets/d0d1dbff-10ec-4d1c-973a-fad97547a609" />

## ✨ Features

  * **Modern Aesthetics:** A clean, transparent UI using the beloved Gruvbox colorscheme.
  * **Fast & Lazy-Loaded:** Powered by `lazy.nvim` to ensure Neovim starts up quickly. Plugins are loaded only when you need them.
  * **Polished UI:** A beautiful statusline from `lualine.nvim`, a sleek bufferline with `bufferline.nvim`, a modern file explorer with `nvim-tree`, and a revamped command line via `noice.nvim`.
  * **Smart Completion & LSP:** Full-featured Language Server Protocol (LSP) support via `nvim-lspconfig` and easy tool management with `mason.nvim`.
  * **Powerful Fuzzy Finding:** `telescope.nvim` at your fingertips for finding files, text, and more.
  * **Git Integration:** Seamless Git integration directly in the editor with `gitsigns.nvim`.

## Prerequisites

Before you begin, make sure you have the following installed:

  * **Neovim v0.10.0+**
  * **A Nerd Font:** This is required for all the icons to render correctly. I recommend [Fira Code Nerd Font](https://www.nerdfonts.com/font-downloads) or [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads).
  * **Git:** For cloning the repository and managing plugins.
  * **A C Compiler:** For compiling some plugins (e.g., `gcc` on Linux, `Xcode Command Line Tools` on macOS).
  * **Essential Tools:** `ripgrep` (for Telescope live grep) and `fd` (for finding files).

### For the Visuals (Transparency & Blur)

The signature transparent and blurred look is **not** handled by Neovim itself. You must configure this in your terminal emulator or window compositor.

  * **Terminal Emulator:** Recommended terminals with built-in support:
      * **Kitty:** Use `background_opacity` and `background_blur`.
      * **WezTerm:** Use `window_background_opacity`.
      * **Windows Terminal:** Use the `"useAcrylic": true` setting.
      * **iTerm2 (macOS):** Adjust transparency and blur settings in the profile's window preferences.
  * **Linux Compositor:** Use a compositor like `picom` to apply blur and transparency to any terminal.

## 🚀 Installation

1.  **Backup your existing Neovim configuration:**

    ```bash
    # Make a backup of your current config, just in case
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clone this repository:**

    ```bash
    # Replace with your GitHub repository URL
    git clone https://github.com/Bimbok/nvim.git ~/.config/
    ```

3.  **Launch Neovim:**

    ```bash
    nvim
    ```

    The first time you launch Neovim, `lazy.nvim` will automatically install all the plugins. This might take a minute or two.

## Post-Installation: Setup Your LSPs

This configuration uses `mason.nvim` to easily install and manage your Language Servers, Linters, and Formatters.

1.  Run the command `:Mason` inside Neovim.
2.  A window will pop up. Press `i` to install a package.
3.  Install any language servers you need for your work. For example:
      * `lua_ls` (for Lua)
      * `tsserver` (for TypeScript/JavaScript)
      * `rust_analyzer` (for Rust)
      * `gopls` (for Go)
      * `pyright` (for Python)

Once installed, they will automatically be configured and attached by `nvim-lspconfig`.

## ⌨️ Keybindings

The leader key is set to the `<Space>` bar. Here are some of the essential keybindings:

| Keybinding        | Description                           |
| ----------------- | ------------------------------------- |
| `<Space>ff`       | Find files (Telescope)                |
| `<Space>fg`       | Find text in files (Live Grep)        |
| `<Space>fb`       | Find open buffers (Telescope)         |
| `<Space>e`        | Toggle the NvimTree file explorer     |
| `<Space>q`        | Close a buffer                        |
| `gd`              | Go to definition (LSP)                |
| `gr`              | Go to references (LSP)                |
| `K`               | Show hover documentation (LSP)        |
| `[d` / `]d`       | Go to previous/next diagnostic        |
| `<Space>ca`       | Code actions (LSP)                    |

## 🎨 Personalization

  * **Changing the Colorscheme:** The theme is set in `lua/plugins/colorscheme.lua`. You can change `name = "gruvbox"` to any other theme you have installed.
  * **Changing the Wallpaper:** Remember, the wallpaper is part of your **terminal's configuration**, not Neovim's. Change it in your Kitty, WezTerm, or desktop settings.

## Credits

This setup wouldn't be possible without the incredible work of the Neovim community and the authors of these amazing plugins.

-----
