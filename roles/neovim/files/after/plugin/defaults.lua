vim.o.swapfile = false
vim.o.backup = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Make relative line numbers default
vim.wo.relativenumber = true
vim.o.smartindent = true

-- Save undo history
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.o.colorcolumn = "80"
vim.wo.signcolumn = 'yes'


vim.cmd [[colorscheme tokyonight]]

-- Remap moving visual selection
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = "Move visual selection up" })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = "Move visual selection down" })


-- paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to unnamed register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- cancel
vim.keymap.set("i", "<C-c>", "<Esc>")

-- LSP keymaps
vim.keymap.set("v", "<leader>ff", "<cmd>lua vim.lsp.buf.format()<cr>")
vim.keymap.set("v", "<leader>fv", "<cmd>lua vim.lsp.buf.format()<cr>")

-- Telescope keymaps
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[Search] [K]eymaps' })


vim.keymap.set('n', '<leader>zz', ':ZenMode<cr>')

vim.keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tt", "<cmd>TodoTrouble<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tl", "<cmd>TodoLocList<cr>",
  { silent = true, noremap = true }
)

-- folke/trouble.nvim
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  { silent = true, noremap = true }
)


vim.keymap.set("n", "<C-t>", "<Plug>PlenaryTestFile<cr>")
