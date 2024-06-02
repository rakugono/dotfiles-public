-- require('base')
-- require('hilights')
require('keymap')
-- require('plugins')


-- osを判別する関数を作成
local has = function(x)
    return vim.fn.has(x) == 1
end
local is_mac = has "macunix"  -- is_macでmacOSを判別する
local is_win = has "win32"  -- is_winでwinOSを判別する

-- macOSの設定を読み込む
if is_mac then
    -- require('mac')
    -- Insert, Commandを抜けるとime offにする(mac)
    vim.cmd [[
        let s:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
        autocmd InsertLeave * :call system(s:imeoff)
        autocmd CmdlineLeave * :call system(s:imeoff)
        ]]
end
-- winOSの設定を読み込む
if is_win then
    require('win')  -- TODO: 動作チェックする
end

--- ./lua/base.luaを読み込む ---

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


