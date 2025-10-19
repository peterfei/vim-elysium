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

### Install vim-plug (Plugin Manager)

#### macOS/Linux
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Windows (PowerShell)
```powershell
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
```

### Steps

1. **Clone this repository:**
   ```bash
   git clone https://github.com/peterfei/vim-elysium.git ~/.vim-elysium
   cd ~/.vim-elysium
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

### File Operations
- `<leader>w`: Save file
- `<leader>q`: Quit

### Search and Navigation
- `<leader><space>`: Clear search highlight
- `<leader>ff`: LeaderF function search
- `<leader>fb`: LeaderF buffer search
- `<leader>fl`: LeaderF line search
- `gd`: Go to definition (Coc)
- `gy`: Go to type definition (Coc)
- `gi`: Go to implementation (Coc)
- `gr`: Go to references (Coc)

### Window Management
- `<C-h/j/k/l>`: Navigate between windows
- `<leader>vs`: Vertical split
- `<leader>sp`: Horizontal split

### File Explorer
- `<C-n>`: Toggle NERDTree

### Code Actions (Coc)
- `<leader>rn`: Rename symbol
- `<leader>qf`: Quick fix current line
- `<space>a`: Show all diagnostics
- `<space>o`: Show outline
- `<space>s`: Search workspace symbols

### Git Integration
- `<leader>gs`: Toggle GitGutter

### Other Features
- `<leader>amp`: Run Amp with selected text (requires Amp CLI)
- `K`: Show documentation (Coc)

### Plugin Specific
- `:NERDTreeToggle`: Toggle file tree
- `:LeaderfFunction`: Search functions
- `:CocList extensions`: Manage Coc extensions
- `:CocInstall <extension>`: Install Coc extension

## Customization

Feel free to modify the configurations to suit your needs. The modular structure makes it easy to add or remove plugins.

## Troubleshooting

- If plugins don't load, ensure vim-plug is installed
- For Coc issues, check Node.js version and reinstall extensions
- Make sure ctags is installed for gutentags

## License

MIT License - feel free to use and modify!
