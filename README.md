# My Vim Configuration

A powerful and modular Vim configuration with various plugins for efficient coding and development.

## Features

### Core Plugins
- **vim-plug**: Plugin manager
- **NERDTree**: File explorer with tabs support
- **LeaderF**: Fuzzy file finder and function search
- **Coc.nvim**: LSP support for autocompletion, diagnostics, and more
- **vim-fugitive**: Git integration
- **vim-surround**: Surround text objects
- **vim-easymotion**: Fast motion
- **vim-gitgutter**: Git diff in gutter
- **vim-markdown**: Markdown support
- **vim-preview**: Quickfix preview
- **tabular**: Table alignment
- **gutentags**: Automatic ctags generation
- **And more...**

### Key Features
- Modular configuration split across multiple files
- Optimized for performance
- LSP integration for multiple languages (Python, JS, TS, etc.)
- Git support
- Code navigation and search
- Custom shortcuts for productivity

## Installation

### Prerequisites
- Vim 8.0+ or Neovim
- Git
- ctags (for gutentags)
- Node.js (for Coc.nvim extensions)

### Steps

1. **Clone this repository:**
   ```bash
   git clone https://github.com/your-username/vim-config.git ~/.vim-config
   cd ~/.vim-config
   ```

2. **Backup your existing Vim configuration:**
   ```bash
   mv ~/.vimrc ~/.vimrc.backup
   mv ~/.vim ~/.vim.backup
   ```

3. **Install the configuration:**
   ```bash
   cp .vimrc ~/.vimrc
   cp -r vimrc ~/.vim/
   ```

4. **Install plugins:**
   Open Vim and run:
   ```
   :PlugInstall
   ```

5. **Install Coc extensions:**
   In Vim, run:
   ```
   :CocInstall coc-json coc-tsserver coc-html coc-css coc-snippets coc-pyright coc-java coc-phpls coc-vetur
   ```

## Configuration Structure

- `.vimrc`: Main configuration file with basic settings and plugin loading
- `vimrc/`: Directory containing modular plugin configurations:
  - `coc.vim`: Coc.nvim settings
  - `leaderf.vim`: LeaderF settings
  - `nerdtree.vim`: NERDTree settings
  - `gutentags.vim`: Gutentags settings
  - And more...

## Key Mappings

### Leader Key
The leader key is set to `,`

### Common Shortcuts
- `<leader>w`: Save file
- `<leader>q`: Quit
- `<leader><space>`: Clear search highlight
- `<C-n>`: Toggle NERDTree
- `<leader>ff`: LeaderF function search
- `gd`: Go to definition (Coc)
- `gr`: Go to references (Coc)
- And more...

## Customization

Feel free to modify the configurations to suit your needs. The modular structure makes it easy to add or remove plugins.

## Troubleshooting

- If plugins don't load, ensure vim-plug is installed
- For Coc issues, check Node.js version and reinstall extensions
- Make sure ctags is installed for gutentags

## License

MIT License - feel free to use and modify!
