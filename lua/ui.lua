vim.opt.clipboard:append("unnamedplus")  --Enable clipboard 
vim.wo.number = true  --Enable numbering
vim.opt.fillchars = { eob = " "}   --end of buffer character

-- Disable indent-blankline for the dashboard
vim.api.nvim_exec([[
  augroup DashboardIndentBlankline
    autocmd!
    autocmd FileType dashboard IndentBlanklineDisable
  augroup END
]], false)

