local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Системный буфер обмена shift - Y
map('v', 'S-Y', '"*y', {})
map('n', 'S-P', '"*p', {})
-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map('i', 'jk', '<Esc>', {noremap = true})
-- Стрелочки откл. Использовать hjkl
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
map('n', '<C-Tab>', 'bdelete<CR>', default_opts) -- Почему-то не работает :(
map('n', '<C-S-Tab>', 'bdelete!<CR>', default_opts)
-- Пролистнуть на страницу вниз / вверх (как в браузерах)
map('n', '<Space>', '<PageDown> zz', default_opts)
map('n', '<C-Space>', '<PageUp> zz', default_opts)
-- telescope
map('n', '<C-a>', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map('n', '<C-p>', [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts)

-----------------------------------------------------------
-- Фн. клавиши по F1 .. F12
-----------------------------------------------------------
-- <F1> 
map('n', '<F1>', '', default_opts)
-- shift + F1 
map('n', '<S-F1>', '', default_opts)
-- <F2> очищаем последний поиск с подсветкой
map('n', '<F2>', ':nohl<CR>', default_opts)
-- <F3> дерево файлов.
map('n', '<F3>', ':NvimTreeToggle<CR>:NvimTreeRefresh<CR>', default_opts)
-- <F4>  Показ дерева классов и функций, плагин majutsushi/tagbar
map('n', '<F4>', ':TagbarToggle<CR>', default_opts)
-- <F5> 
map('n', '<F5>', '', default_opts)
-- <F6> 
map('n', '<F6>', '', default_opts)
-- <F7> Запуск питонячего кода по одной кнопке 
map('n', '<F7>', ':!python3 %<CR>', default_opts)
-- <F8>  
map('n', '<F8>', '', default_opts)
-- <F9> Поиск слова под курсором
map('n', '<F9>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <S-F9> Поиск слова в модальном окошке
map('n', '<S-F9>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
-- <F10> разные вариации нумераций строк, можно переключаться
map('n', '<F10>', ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)
-- <F11> перечитать конфигурацию nvim Может не работать, если echo $TERM  xterm-256color
map('n', '<F11>', ':so ~/.config/nvim/init.lua<CR>:so ~/.config/nvim/lua/plugins.lua<CR>:so ~/.config/nvim/lua/settings.lua<CR>:so ~/.config/nvim/lua/keymaps.lua<CR>', { noremap = true })
-- <S-F11> Открыть всю nvim конфигурацию для редактирования
map('n', '<S-F11>', ':e ~/.config/nvim/init.lua<CR>:e ~/.config/nvim/lua/plugins.lua<CR>:e ~/.config/nvim/lua/settings.lua<CR>:e ~/.config/nvim/lua/keymaps.lua<CR>', { noremap = true })
