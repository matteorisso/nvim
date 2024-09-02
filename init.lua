-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set system language to English
vim.cmd("language en_US")

-- Create an autocommand group
vim.api.nvim_create_augroup("MyHighlightOverrides", { clear = true })

-- Apply custom highlight settings after any colorscheme is loaded
vim.api.nvim_create_autocmd("ColorScheme", {
  group = "MyHighlightOverrides",
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
    -- vim.api.nvim_set_hl(0, "NonText", { fg = "#d7af87" })
    vim.api.nvim_set_hl(0, "NonText", { fg = "#af875f" })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#8a8a8a" })
    vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
    vim.api.nvim_set_hl(0, "@string", { fg = "#af875f" })
    vim.api.nvim_set_hl(0, "Identifier", { fg = "#005faf" })
    -- vim.api.nvim_set_hl(0, "Structure", { link = "Keyword" })
    -- vim.api.nvim_set_hl(0, "Type", { fg = "#87af87" })
  end,
})
