local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Resize
keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>t", "<cmd>ToggleTerm size=50 direction=vertical<cr>", opts)
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers theme=ivy<cr>", opts)
keymap("n", "<leader>T", "<cmd>TestNearest -strategy=neovim<cr>", opts)

-- Get <filename>:<row> copied to clipboard
keymap("n", "<leader>br", "<cmd>lua os.execute('echo ' .. vim.fn.expand('%') .. ':' .. vim.fn.line('.') .. ' | pbcopy')<cr>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", opts)
keymap("n", "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", opts)
keymap("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", opts)
keymap("n", "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status theme=ivy<cr>", opts)
keymap("n", "<leader>gb", "<cmd>Telescope git_branches theme=ivy<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits theme=ivy<cr>", opts)

-- LSP
keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
keymap("n", "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", opts)
keymap("n", "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", opts)
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", opts)
