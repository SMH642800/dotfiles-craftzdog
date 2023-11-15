-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- undo redo in lua just like vs code
local map = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, {
    noremap = true,
    silent = true,
  })
end

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- delete single line without copying into register ("_: blackhole register)
keymap.set("n", "d", '"_d')
keymap.set("v", "d", '"_d')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<CR>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts) -- split window in horizontal (left-right)
keymap.set("n", "sv", ":vsplit<Return>", opts) -- split window in vertical (up-down)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- undo
map("n", "<C-z>", "u", noremap_silent)
map("i", "<C-z>", "<C-o>u", noremap_silent)
map("v", "<C-z>", "<esc>u", noremap_silent)

-- redo
-- redo for normal mode is built-in
map("i", "<C-r>", "<C-o><C-r>", noremap_silent)
map("v", "<C-r>", "<esc><C-r>", noremap_silent)

-- Resize window
--keymap.set("n", "<C-w><left>", "<C-w><")
--keymap.set("n", "<C-w><right>", "<C-w>>")
--keymap.set("n", "<C-w><up>", "<C-w>+")
--keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

--keymap.set("n", "<leader>r", function()
--	require("craftzdog.utils").replaceHexWithHSL()
--end)
