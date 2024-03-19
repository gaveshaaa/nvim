vim.g.mapleader = " ";

local keys = vim.keymap;

local function create_macro(mode, macro, func)
	keys.set(mode, macro, func, { silent = true });
end

-- Window Navigation
create_macro("n", "<C-h>", "<C-w>h")
create_macro("n", "<C-l>", "<C-w>l")
create_macro("n", "<C-k>", "<C-w>k")
create_macro("n", "<C-j>", "<C-w>j")

-- Resize Windows
create_macro("n", "<C-Left>", "<C-w><")
create_macro("n", "<C-Right>", "<C-w>>")
create_macro("n", "<C-Up>", "<C-w>+")
create_macro("n", "<C-Down>", "<C-w>-")


-- Buffer Locomotion
create_macro("n", "<TAB>", "<CMD>bnext<CR>")
create_macro("n", "<S-TAB>", "<CMD>bprevious<CR>")
