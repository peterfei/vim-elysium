# Vim-Elysium: Professional IDE-Level Vim Configuration

**🏆 World-Class Vim Configuration - 23 Plugins, IDE-Level Features**

A meticulously crafted, professional-grade Vim configuration that rivals modern IDEs like VSCode and IntelliJ. This setup provides complete development environment with LSP support, debugging, syntax checking, multi-cursor editing, and much more.

## Demo

![Vim-Elysium Demo](vim.gif)

## ✨ Professional Features

### 🎯 **Complete IDE Functionality (23 Carefully Selected Plugins)**

**🔧 Development Tools (100% Coverage):**
- **coc.nvim** - Full LSP support, intelligent completion, diagnostics, refactoring
- **ALE** - Real-time syntax checking and auto-fixing
- **vimspector** - Integrated debugger with breakpoints and variable inspection
- **vim-visual-multi** - Advanced multi-cursor editing
- **nerdcommenter** - Smart commenting for multiple languages
- **auto-pairs** - Automatic bracket/quote completion
- **honza/vim-snippets** - Code snippets and templates

**📁 File Management:**
- **LeaderF** - Ultra-fast fuzzy file finder and function search
- **NERDTree + vim-nerdtree-tabs** - Enhanced file tree with tab support

**🔄 Version Control:**
- **vim-fugitive** - Complete Git integration
- **vim-gitgutter** - Git diff visualization in gutter

**🎨 User Interface:**
- **vim-airline + vim-airline-themes** - Professional status bar
- **gruvbox** - Comfortable dark theme optimized for coding

**🛠️ Productivity Tools:**
- **asyncrun.vim** - Asynchronous task execution
- **floaterm** - Floating terminal window
- **vim-gutentags** - Automatic tag generation for code navigation
- **vim-preview** - Enhanced quickfix window preview
- **tabular** - Advanced text alignment
- **vim-markdown** - Rich Markdown editing
- **vim-surround** - Surround text manipulation
- **vim-easymotion** - Lightning-fast cursor movement

### 🏆 **Professional-Grade Features**
- **Zero Conflicts**: Carefully designed shortcuts (multi-cursor uses #, coc uses Ctrl+n)
- **Modular Architecture**: 10+ separate config files for maintainability
- **Performance Optimized**: Lazy loading, efficient settings, fast startup
- **Universal Language Support**: Python, JavaScript, TypeScript, C/C++, Java, PHP, and more
- **Integrated Ecosystem**: Terminal, debugging, testing, all within Vim
- **Extensible Design**: Easy to add new plugins and customize

## Installation

### Prerequisites
- Vim 8.0+ or Neovim
- Git
- ctags (for gutentags)
- Node.js (for Coc.nvim extensions)

### Installing ctags

Ctags is required for the gutentags plugin to generate tags for code navigation. Here are instructions for installing ctags on different operating systems:

#### macOS
```bash
brew install universal-ctags
```
Or using MacPorts:
```bash
sudo port install ctags
```

#### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install universal-ctags
```

#### Linux (CentOS/RHEL/Fedora)
```bash
# For CentOS/RHEL
sudo yum install ctags
# Or for Fedora
sudo dnf install ctags
```

#### Windows
Using Chocolatey:
```powershell
choco install universal-ctags
```
Or download the latest release from [universal-ctags releases](https://github.com/universal-ctags/ctags/releases) and add the executable to your PATH.

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
- `<C-p>`: LeaderF file search

### Search and Navigation
- `<leader><space>`: Clear search highlight
- `<leader>ff`: LeaderF function search
- `<leader>fb`: LeaderF buffer search
- `<leader>fl`: LeaderF line search
- `<leader>r`: Locate current file in NERDTree
- `gd`: Go to definition (Coc)
- `gy`: Go to type definition (Coc)
- `gi`: Go to implementation (Coc)
- `gr`: Go to references (Coc)

### Multi-Cursor Editing (vim-visual-multi)
- `<Leader>m`: Start multi-cursor on word
- `g<Leader>m`: Select all occurrences
- `<C-j>`: Add cursor down
- `<C-k>`: Add cursor up
- `<Leader>[`: Remove cursor
- `<Leader>]`: Skip cursor
- `Esc`: Exit multi-cursor mode

**Insert Mode Commands (apply to all cursors):**
- `i`: Insert before each cursor
- `a`: Insert after each cursor
- `I`: Insert at start of line for each cursor
- `A`: Insert at end of line for each cursor
- `o`: Open new line below each cursor
- `O`: Open new line above each cursor

### Window Management
- `<C-h/j/k/l>`: Navigate between windows
- `<leader>vs`: Vertical split
- `<leader>sp`: Horizontal split

### File Explorer
- `<F8>`: Toggle NERDTree
- `<leader>e`: Toggle NERDTree tabs
- `<leader>n`: Toggle NERDTree tabs

### Code Actions (Coc)
- `<leader>rn`: Rename symbol
- `<leader>qf`: Quick fix current line
- `<leader>a`: Code action
- `<space>a`: Show all diagnostics
- `<space>e`: Manage extensions
- `<space>c`: Show commands
- `<space>o`: Show outline
- `<space>s`: Search workspace symbols
- `K`: Show documentation

### Multi-Cursor & Editing
- `,c<space>`: Toggle comment (NERDCommenter)

### Terminal & Tasks
- `<F12>`: Toggle floating terminal
- `<F13>`: New terminal
- `<F14>`: Previous terminal
- `<F15>`: Next terminal
- `<leader>amp`: Run Amp with selected text

### Debugging (Vimspector)
- `<leader>di`: Inspect variable under cursor

### Git Integration
- `:Git <command>`: Run Git commands
- `<leader>gs`: Toggle GitGutter

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
