-----------------------------------------------------------
-- Импорт модулей lua
-----------------------------------------------------------
require('plugins')
require('settings') 
require('keymaps')

-----------------------------------------------------------
-- Проверяем установлен ли Packer. Если нет - устанавливаем
-- (! не факт что это работает - проверить)
-----------------------------------------------------------
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- ...

  if packer_bootstrap then
    require('packer').sync()
  end
end)

