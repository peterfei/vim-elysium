# 我的 Vim 配置

一个强大且模块化的 Vim 配置，包含各种插件，用于高效编码和开发。

## 功能特性

### 核心插件
- **vim-plug**: 插件管理器
- **NERDTree**: 文件浏览器，支持标签页
- **LeaderF**: 模糊文件查找和函数搜索
- **Coc.nvim**: LSP 支持，提供自动补全、诊断等功能
- **vim-fugitive**: Git 集成
- **vim-surround**: 包围文本对象
- **vim-easymotion**: 快速移动
- **vim-gitgutter**: 侧边栏显示 Git 差异
- **vim-markdown**: Markdown 支持
- **vim-preview**: Quickfix 预览
- **tabular**: 表格对齐
- **gutentags**: 自动生成 ctags
- **以及更多...**

### 主要特性
- 配置模块化，分多个文件管理
- 性能优化
- LSP 集成，支持多种语言（Python、JS、TS 等）
- Git 支持
- 代码导航和搜索
- 自定义快捷键提高生产力

## 安装

### 前置要求
- Vim 8.0+ 或 Neovim
- Git
- ctags（用于 gutentags）
- Node.js（用于 Coc.nvim 扩展）

### 安装前置要求

#### ctags

Ctags 是 gutentags 插件所需的，用于生成代码导航的标签文件。以下是在不同操作系统上安装 ctags 的说明：

##### macOS
```bash
brew install universal-ctags
```
或使用 MacPorts：
```bash
sudo port install ctags
```

##### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install universal-ctags
```

##### Linux (CentOS/RHEL/Fedora)
```bash
# CentOS/RHEL
sudo yum install ctags
# Fedora
sudo dnf install ctags
```

##### Windows
使用 Chocolatey：
```powershell
choco install universal-ctags
```
或从 [universal-ctags releases](https://github.com/universal-ctags/ctags/releases) 下载最新版本并添加到 PATH 中。

#### Node.js

Node.js 是 Coc.nvim 扩展所需的。推荐使用 Node.js 14+ 或更高版本（Coc.nvim 需要 Node.js 12+，但 14+ 更稳定）。

- 下载地址：[nodejs.org](https://nodejs.org/)
- 或使用包管理器安装（例如 macOS 使用 `brew install node`，Ubuntu 使用 `sudo apt install nodejs`）

### 安装 vim-plug（插件管理器）

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

### 安装步骤

1. **克隆此仓库：**
   ```bash
   git clone https://github.com/peterfei/vim-elysium.git ~/.vim-elysium
   cd ~/.vim-elysium
   ```

2. **备份现有 Vim 配置：**
   ```bash
   mv ~/.vimrc ~/.vimrc.backup
   mv ~/.vim ~/.vim.backup
   ```

3. **安装配置：**
   ```bash
   cp .vimrc ~/.vimrc
   cp -r vimrc ~/.vim/
   ```

4. **安装插件：**
   打开 Vim 并运行：
   ```
   :PlugInstall
   ```

5. **安装 Coc 扩展：**
   在 Vim 中运行：
   ```
   :CocInstall coc-json coc-tsserver coc-html coc-css coc-snippets coc-pyright coc-java coc-phpls coc-vetur
   ```

## 配置结构

- `.vimrc`: 主配置文件，包含基础设置和插件加载
- `vimrc/`: 目录包含模块化插件配置：
  - `coc.vim`: Coc.nvim 设置
  - `leaderf.vim`: LeaderF 设置
  - `nerdtree.vim`: NERDTree 设置
  - `gutentags.vim`: Gutentags 设置
  - 等等...

## 快捷键映射

### Leader 键
Leader 键设置为 `,`

### 文件操作
- `<leader>w`: 保存文件
- `<leader>q`: 退出

### 搜索和导航
- `<leader><space>`: 清除搜索高亮
- `<leader>ff`: LeaderF 函数搜索
- `<leader>fb`: LeaderF 缓冲区搜索
- `<leader>fl`: LeaderF 行搜索
- `gd`: 跳转到定义 (Coc)
- `gy`: 跳转到类型定义 (Coc)
- `gi`: 跳转到实现 (Coc)
- `gr`: 跳转到引用 (Coc)

### 窗口管理
- `<C-h/j/k/l>`: 在窗口间导航
- `<leader>vs`: 垂直分割
- `<leader>sp`: 水平分割

### 文件浏览器
- `<C-n>`: 切换 NERDTree

### 代码操作 (Coc)
- `<leader>rn`: 重命名符号
- `<leader>qf`: 快速修复当前行
- `<space>a`: 显示所有诊断
- `<space>o`: 显示大纲
- `<space>s`: 搜索工作区符号

### Git 集成
- `<leader>gs`: 切换 GitGutter

### 其他功能
- `<leader>amp`: 使用选中文本运行 Amp（需要 Amp CLI）
- `K`: 显示文档 (Coc)

### 插件特定命令
- `:NERDTreeToggle`: 切换文件树
- `:LeaderfFunction`: 搜索函数
- `:CocList extensions`: 管理 Coc 扩展
- `:CocInstall <extension>`: 安装 Coc 扩展

## 自定义

你可以根据需要修改配置。模块化结构使得添加或移除插件变得简单。

## 故障排除

- 如果插件无法加载，确保安装了 vim-plug
- Coc 问题请检查 Node.js 版本并重新安装扩展
- 确保安装了 ctags 以支持 gutentags

## 许可证

MIT 许可证 - 随意使用和修改！
