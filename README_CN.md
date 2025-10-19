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

### 安装步骤

1. **克隆此仓库：**
   ```bash
   git clone https://github.com/your-username/vim-config.git ~/.vim-config
   cd ~/.vim-config
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

### 常用快捷键
- `<leader>w`: 保存文件
- `<leader>q`: 退出
- `<leader><space>`: 清除搜索高亮
- `<C-n>`: 切换 NERDTree
- `<leader>ff`: LeaderF 函数搜索
- `gd`: 跳转到定义 (Coc)
- `gr`: 跳转到引用 (Coc)
- 等等...

## 自定义

你可以根据需要修改配置。模块化结构使得添加或移除插件变得简单。

## 故障排除

- 如果插件无法加载，确保安装了 vim-plug
- Coc 问题请检查 Node.js 版本并重新安装扩展
- 确保安装了 ctags 以支持 gutentags

## 许可证

MIT 许可证 - 随意使用和修改！
