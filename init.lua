-- community plugins
return {
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.motion.nvim-surround" },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },
  },
  polish = function()
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    -- quality of life
    map("i", "jk", "<ESC>", opts)
    map("n", "J", "mzJ`z", opts)
    map("n", "<c-d>", "<C-d>zz", opts)
    map("n", "<c-u>", "<C-u>zz", opts)
    map("n", "n", "nzzzv", opts)
    map("n", "N", "Nzzzv", opts)
    map("n", "<C-a>", "ggVG", opts)
    map("i", "<c-o>", "<C-O>o", opts)

    -- save & quit
    map("i", "<c-s>", "<ESC><cmd>w!<cr>", opts)
    map("n", "<c-s>", "<cmd>w!<cr>", opts)
    map("n", "<c-q>", "<cmd>q!<cr>", opts)

    -- move line up & down
    map("n", "<A-k>", ":m .-2<cr>==", opts)
    map("n", "<A-j>", ":m .+1<cr>==", opts)
    map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
    map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
    map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
    map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)

    map("n", "<leader>.", ":cd ~/.config/nvim<cr>:e init.lua<cr>", opts)
  end
}
