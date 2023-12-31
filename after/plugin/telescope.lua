local builtin = require('telescope.builtin')
local telescope = require("telescope")

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ps', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>gs', builtin.grep_string, {})

telescope.setup({
  defaults= {
    file_ignore_patterns = {"node_modules"}
  }
})
