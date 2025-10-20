# Vim-Elysium: 专业级 IDE 水准的 Vim 配置

**🏆 世界一流的 Vim 配置 - 23 个插件，IDE 级功能**

精心打造的专业级 Vim 配置，可与 VSCode、IntelliJ 等现代 IDE 媲美。此配置提供完整的开发环境，包括 LSP 支持、调试、语法检查、多光标编辑等。

## ✨ 专业功能特性

### 🎯 **完整的 IDE 功能（23 个精心挑选的插件）**

**🔧 开发工具（100% 覆盖）：**
- **coc.nvim** - 完整的 LSP 支持、智能补全、诊断、重构
- **ALE** - 实时语法检查和自动修复
- **vimspector** - 集成调试器，支持断点和变量检查
- **vim-multiple-cursors** - 多光标编辑（# 键启动）
- **nerdcommenter** - 多语言智能注释
- **auto-pairs** - 自动括号/引号补全
- **honza/vim-snippets** - 代码片段和模板

**📁 文件管理：**
- **LeaderF** - 超快模糊文件查找和函数搜索
- **NERDTree + vim-nerdtree-tabs** - 增强的文件树，支持标签页

**🔄 版本控制：**
- **vim-fugitive** - 完整的 Git 集成
- **vim-gitgutter** - 侧边栏 Git 差异可视化

**🎨 用户界面：**
- **vim-airline + vim-airline-themes** - 专业状态栏
- **gruvbox** - 舒适的暗色主题，专为编码优化

**🛠️ 生产力工具：**
- **asyncrun.vim** - 异步任务执行
- **floaterm** - 浮动终端窗口
- **vim-gutentags** - 自动标签生成，代码导航
- **vim-preview** - 增强的 quickfix 窗口预览
- **tabular** - 高级文本对齐
- **vim-markdown** - 丰富的 Markdown 编辑
- **vim-surround** - 包围文本操作
- **vim-easymotion** - 闪电般的光标移动

### 🏆 **专业级特性**
- **零冲突**：精心设计的快捷键（多光标使用 #，coc 使用 Ctrl+n）
- **模块化架构**：10+ 个分离的配置文件，便于维护
- **性能优化**：延迟加载、高效设置、快速启动
- **通用语言支持**：Python、JavaScript、TypeScript、C/C++、Java、PHP 等
- **集成生态**：终端、调试、测试，全在 Vim 内
- **可扩展设计**：易于添加新插件和自定义

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
- `<C-p>`: LeaderF 文件搜索

### 搜索和导航
- `<leader><space>`: 清除搜索高亮
- `<leader>ff`: LeaderF 函数搜索
- `<leader>fb`: LeaderF 缓冲区搜索
- `<leader>fl`: LeaderF 行搜索
- `<leader>r`: 在 NERDTree 中定位当前文件
- `gd`: 跳转到定义 (Coc)
- `gy`: 跳转到类型定义 (Coc)
- `gi`: 跳转到实现 (Coc)
- `gr`: 跳转到引用 (Coc)

### 多光标编辑
- `<Leader>m`: 在单词上开始多光标
- `g<Leader>m`: 在任意位置开始多光标
- `<Leader>[`: 上一个光标
- `<Leader>]`: 跳过光标
- `Esc`: 退出多光标模式

### 窗口管理
- `<C-h/j/k/l>`: 在窗口间导航
- `<leader>vs`: 垂直分割
- `<leader>sp`: 水平分割

### 文件浏览器
- `<F8>`: 切换 NERDTree
- `<leader>e`: 切换 NERDTree 标签页
- `<leader>n`: 切换 NERDTree 标签页

### 代码操作 (Coc)
- `<leader>rn`: 重命名符号
- `<leader>qf`: 快速修复当前行
- `<leader>a`: 代码操作
- `<space>a`: 显示所有诊断
- `<space>e`: 管理扩展
- `<space>c`: 显示命令
- `<space>o`: 显示大纲
- `<space>s`: 搜索工作区符号
- `K`: 显示文档

### 多光标和编辑
- `,c<space>`: 切换注释 (NERDCommenter)

### 终端和任务
- `<F12>`: 切换浮动终端
- `<F13>`: 新建终端
- `<F14>`: 上一个终端
- `<F15>`: 下一个终端
- `<leader>amp`: 使用选中文本运行 Amp

### 调试 (Vimspector)
- `<leader>di`: 检查光标下变量

### Git 集成
- `:Git <command>`: 运行 Git 命令
- `<leader>gs`: 切换 GitGutter

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
