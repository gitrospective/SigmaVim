require("nvterm").setup({
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .3, },
      vertical = { location = "rightbelow", split_ratio = .5 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
})
-- Toggle terminal horizontally
vim.api.nvim_set_keymap('n', '<C-t>', [[<Cmd>lua require("nvterm.terminal").toggle "horizontal"<CR>]], { noremap = true, silent = true })
-- Toggle terminal vertically
vim.api.nvim_set_keymap('n', '<S-T>', [[<Cmd>lua require("nvterm.terminal").toggle "vertical"<CR>]], { noremap = true, silent = true })
