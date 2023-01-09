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

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<leader>es", "<cmd>NvimTreeFindFile<cr>", { desc = "NvimTreeFindFile - show buffer" })

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
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').live_grep({grep_open_files=true}), { desc = '[S]earch open [b]uffers by grep' })
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[Search] [K]eymaps' })

-- toggle Zen Mode
vim.keymap.set('n', '<leader>zz', ':ZenMode<cr>')

-- folke/trouble
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

-- ThePrimeagen/harpoon
-- TODO: sort out these keymaps
vim.keymap.set("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<cr>")
vim.keymap.set("n", "<leader>n", "<cmd>lua require('harpoon.ui').nav_prev()<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>lua require('harpoon.ui').nav_next()<cr>")
vim.keymap.set("n", "<leader>g1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
vim.keymap.set("n", "<leader>g2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
vim.keymap.set("n", "<leader>g3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
vim.keymap.set("n", "<leader>g4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")

vim.keymap.set("n", "<C-t>", "<Plug>PlenaryTestFile<cr>")
