
# 🌅 ⚡ Sunset LazyVim NVIM — Ultra-Fast Modern Neovim

A hyper-optimized, aesthetic Neovim configuration built on **LazyVim** and powered by **lazy.nvim**.
Designed to be *fast*, *beautiful*, and *actually fun* to code in.

This config launches in **~28ms** (yep, fr).
Only **7 plugins** load on startup — the rest load exactly when you need them.

<p align="center">
  <img src="https://github.com/user-attachments/assets/3c6e5719-35d6-40b3-87b1-788e05992223" />
  <img src="https://github.com/user-attachments/assets/d0d1dbff-10ec-4d1c-973a-fad97547a609" />
</p>

---

![Neovim](https://img.shields.io/badge/Neovim-0.10+-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Startup Time](https://img.shields.io/badge/Startup%20Time-~28ms-ffb86c?style=for-the-badge&logo=speedtest)
![Lazy.nvim](https://img.shields.io/badge/Plugin%20Manager-lazy.nvim-blueviolet?style=for-the-badge)
![OS](https://img.shields.io/badge/Linux-Arch%20%7C%20Ubuntu-1793D1?style=for-the-badge&logo=linux&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-success?style=for-the-badge)


## ✨ What’s New & Upgraded?

### 🔥 **Insane Startup Speed (~28ms)**

* Smart plugin lazy-loading
* Only essential UI loads instantly
* Everything else loads on demand
* Smoothest LazyVim experience possible

### 🌈 **Modern UI Overhaul**

* **Gruvbox Transparent** (with terminal blur support)
* **Snacks Dashboard** with custom branding
* **Neo-scroll** smooth scrolling
* **Smear Cursor** animation
* **Lualine** + **Bufferline** fully styled
* **Noice** for messages, LSP popups & cmdline rewrite

### 🖼️ **Rich Media Support**

* **image.nvim** for displaying images inside Neovim
  (great for markdown previews, comics, etc.)

### 📁 **Next-Gen File Navigation**

* **Yazi TUI integration** inside Neovim
* Telescope with icons, live grep, fuzzy everything
* Recent files, projects, sessions — all wired into the dashboard

### 💻 **Smart LSP & Completion Setup**

* Automatic LSP installation via Mason
* Full LSP: hover, diagnostics, formatting, rename, code actions
* Smart borders, rounded windows, pretty UI everywhere

### 📦 **Better Treesitter Experience**

* Syntax highlighting
* Incremental selection
* Text objects
* Auto-install ensures smooth handling of new languages

### 🔧 **Highly Modular Plugin Config**

Your config is now clean, modular, and future-proof:

* Each plugin lives in its own Lua file
* Easy to edit/remove/extend
* Built for long-term customizability

---

## 🚀 Installation

```bash
# Backup your old config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone https://github.com/Bimbok/nvim ~/.config/nvim

# Launch Neovim
nvim
```

Lazy.nvim will auto-install everything.

---

## 🧠 Requirements

* **Neovim 0.10+**
* **Nerd Font** (JetBrains Mono NF or FiraCode NF recommended)
* **Git**
* **ripgrep** + **fd** for Telescope
* **gcc / clang** for building native plugins

### 🌫️ Transparency + Blur Requirements

Neovim does NOT do transparency — your terminal/compositor does.

Recommended:

| Terminal             | Transparency Support  |
| -------------------- | --------------------- |
| **Kitty**            | ✔ blur + opacity      |
| **WezTerm**          | ✔ acrylic opacity     |
| **Windows Terminal** | ✔ acrylic             |
| **iTerm2**           | ✔ blur + transparency |
| **Linux (picom)**    | ✔ all features        |

---

## 🧩 Key Bindings (LazyVim Style)

| Keys        | Action               |
| ----------- | -------------------- |
| `<Space>ff` | Find files           |
| `<Space>fg` | Live grep            |
| `<Space>fb` | Fuzzy switch buffers |
| `<Space>e`  | Toggle file explorer |
| `<Space>q`  | Close buffer         |
| `gd`        | Go to definition     |
| `gr`        | Go to references     |
| `K`         | Hover docs           |
| `[d` / `]d` | Next/prev diagnostic |
| `<Space>ca` | Code actions         |

---

## 🎨 Customization

### Change Colorscheme

Modify this file:

```
lua/plugins/colorscheme.lua
```

### Change Dashboard Logo

Edit:

```
lua/plugins/ui.lua
```

### Change Wallpaper

Done *outside* Neovim — inside your terminal.

---

## 📦 Plugin Highlights

* **UI** → Noice, Snacks, Smooth scrolling, Smear cursor, lualine, bufferline
* **Navigation** → telescope, yazi integration
* **Editing** → treesitter, comment.nvim, autopairs
* **LSP** → lspconfig, mason, fidget, borders
* **Git** → gitsigns
* **Media** → image.nvim
* **Quality of Life** → which-key, lazy extras, sessions

---

## 🤝 Credits

Huge appreciation to the Neovim community and all plugin authors who make this ecosystem so fun to build on.

---

# 🎉 Enjoy your ultra-modern, ultra-fast Neovim setup.
