-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local diagnostic_goto = function(next, severity)
  return function()
    vim.diagnostic.jump({
      count = (next and 1 or -1) * vim.v.count1,
      severity = severity and vim.diagnostic.severity[severity] or nil,
      float = true,
    })
  end
end

keymap("n", "ge", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
keymap("n", "<leader>ff", "<cmd>lua require('fzf-lua').grep({ search = '' })<CR>", { desc = "grep with filenames" })
keymap("n", "<m-o>", "<cmd>lua require('fzf-lua').files()<CR>", { desc = "open files fuzzy" })

-- split planes
keymap("n", "<leader>vs", ":wincmd v<CR>", {}) -- split windows vertical
keymap("n", "<leader>ss", ":wincmd s<CR>", {}) -- split windows horizontal
keymap("n", ">", "<C-w>>", {}) -- grow split pane
keymap("n", "<", "<C-w><", {}) -- shrink split pane

-- in window
keymap("n", "<m-h>", ":bp<CR>", {}) -- jump to next buffer
keymap("n", "<m-l>", ":bn<CR>", {}) -- jump to prev buffer

-- lsp
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {})
keymap("n", "<leader>o", "<cmd>Trouble symbols toggle<CR>", {})
