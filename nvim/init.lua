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
