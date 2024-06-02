require('base')
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
    require('mac')
end
-- winOSの設定を読み込む
if is_win then
    require('win')  -- TODO: 動作チェックする
end
