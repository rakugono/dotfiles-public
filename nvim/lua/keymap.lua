local keymap = vim.keymap
-- option: n = normal, nx = normal + visual

-- <Leader>を<Space>キーに設定した
vim.g.mapleader = " "

-- Split window  -- 画面分割後した方を選択する
keymap.set('n', '<Leader>-', ':split<Return><C-w>w', {silent = true})
keymap.set('n', '<Leader>\\', ':vsplit<Return><C-w>w', {silent = true})
-- Move window
keymap.set('n', ',', '<C-w>w')

-- 行の端に移動する
keymap.set('n', '<Space>h', '^')
keymap.set('n', '<Space>l', '$')

-- <Esc>を2回押下してハイライトをやめる
keymap.set('n', '<Esc><Esc>', ':<C-u>set nohlsearch<Return>', {silent = true})

-- 表示行を移動する  -- 論理行をg付きで移動する
keymap.set('n', 'k', 'gk')
keymap.set('n', 'gk', 'k')
keymap.set('n', 'j', 'gj')
keymap.set('n', 'gj', 'j')




