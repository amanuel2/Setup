vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Swap multiple lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Half page jumps
-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<S-d>", "<C-d>zz")
vim.keymap.set("n", "<S-u>", "<C-u>zz")
-- vim.kepmap.set("n", "<C-r>", "r")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "Q", "<nop>")
-- Change projects
vim.keymap.set("n", "<S-f>", "<cmd>!tmux neww -n -s tmux-sessionizer<CR>")

vim.keymap.set('n', '<S-Left>', '<cmd>NvimTreeClose<CR>')
vim.keymap.set('n', '<S-Right>', '<cmd>NvimTreeOpen<CR>')
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- vim.api.nvim_set_keymap('n', '<C-Left>', '<cmd>NvimTreeClose<CR>', { noremap = true, silent = true })

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")

    local function my_on_attach(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        -- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
        -- vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
    end

    -- pass to setup along with your other options
    require("nvim-tree").setup {
        ---
        on_attach = my_on_attach,
        ---
    }
end)
