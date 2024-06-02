-- Insert, Commandを抜けるとime offにする(mac)
vim.cmd [[
    let s:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
    autocmd InsertLeave * :call system(s:imeoff)
    autocmd CmdlineLeave * :call system(s:imeoff)
    ]]
