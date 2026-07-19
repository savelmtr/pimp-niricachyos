-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard:append("unnamedplus")
vim.g.neovide_scale_factor = 0.9
-- if vim.g.neovide then
--   vim.g.neovide_no_custom_clipboard = true
--
--   -- Command line: используйте <C-r>+ напрямую или Shift+Insert
--   vim.keymap.set("c", "<S-Insert>", "<C-R>+", { noremap = true })
--
--   -- Insert mode: <C-r>+ вместо Ctrl+V
--   vim.keymap.set("i", "<C-r>", "<C-r>+", { noremap = true })
--
--   -- Или Mac-style Cmd+V (если на Linux - Super+V)
--   vim.keymap.set("c", "<D-v>", "<C-R>+")
--   vim.keymap.set("i", "<D-v>", "<C-r>+")
-- end
