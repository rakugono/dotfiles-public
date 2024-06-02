-- OSのクリップボードを共有
vim.opt.clipboard:append{'unnamedplus'}

-- backupファイルを作らない
vim.opt.backup = false

-- swapファイルを作らない
vim.opt.swapfile = false

-- 行番号を表示する
vim.opt.number = true
vim.opt.relativenumber = true

-- terminalのタブにファイル名を表示する
-- vim.opt.title = true
-- vim.opt.title = true

-- spaceを表示する(インデントを可視化する)
vim.opt.list = true

-- タブの代わりにスペースを使う
vim.opt.expandtab = true
-- Tabキーで挿入するスペースの数(4)
vim.opt.softtabstop = 4
-- 自動インデント切り替え
vim.opt.smartindent = true
-- 自動インデントのスペースの個数(4)
vim.opt.shiftwidth = 4

-- 検索で大文字小文字を区別しない
vim.opt.ignorecase = true
-- 大文字検索したら区別をする
vim.opt.smartcase = true
-- 検索が末尾まで行ったら先頭から検索する
vim.opt.wrapscan = true

-- 全角文字を2文字として表示する
vim.opt.ambiwidth = "double"

-- terminalの色を豊かにする
vim.opt.termguicolors = true

