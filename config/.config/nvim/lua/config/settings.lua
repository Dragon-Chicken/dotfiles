vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

--vim.g.mapleader = ' '
--vim.g.maplocalleader = ' '

--vim.opt.backspace = '2' -- your guess is as good as mine
vim.opt.showcmd = true  -- also no idea
vim.opt.laststatus = 2  -- also no idea
vim.opt.autowrite = true  -- also no idea
vim.opt.cursorline = true -- also no idea

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2 -- tab width
vim.opt.shiftwidth = 2  -- indent width
vim.opt.shiftround = true
vim.opt.expandtab = true  -- use space instead of tab
vim.opt.smartindent = true -- smart stuff
vim.opt.autoindent = true -- copy current lines indent to next line

-- cool stuff
vim.opt.scrolloff = 10 -- scroll offset to 10
vim.opt.number = true -- show numbers
vim.opt.relativenumber = true -- relative numbers

-- search
vim.opt.ignorecase = true -- ignore case in search
vim.opt.smartcase = true -- if uppercase then unignore
vim.opt.incsearch = true -- show matches as you type

-- visual settings
vim.opt.showmatch = true -- show matching brakets
vim.opt.matchtime = 2 -- how long to show match
vim.opt.cmdheight = 1 -- number of lines for cmd 
vim.opt.completeopt = "fuzzy,menuone,noinsert" -- completion options

-- file handling
vim.opt.undofile = true -- persistent undo
vim.opt.autoread = true -- auto reload

-- behavior settings
--vim.opt.backspace = "indent,eol,start" -- idk this is default vim
vim.opt.iskeyword:append("-") -- does this > this-is-one-word
--vim.opt.selection = "exclusive"
vim.opt.mouse = "a" -- mouse for all modes
vim.opt.clipboard:append("unnamedplus") -- use system clipboard

-- folds!!!!!!!!
--vim.opt.foldmethod = "indent"

--vim.cmd [[ set noswapfile ]]

-- scroll offset
--vim.cmd [[ set scrolloff=10 ]]

-- line number thingy
--vim.cmd [[ set number rnu ]]

--Line numbers
--vim.wo.number = true

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--nvim tree keymaps (nvim file browser)
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
