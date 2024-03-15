-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="g++ *.cpp -o %:t:r.exe "<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F4>",
      "<ESC>:w<CR>:!g++ *.cpp -o %:t:r.exe<CR>",
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-F4>",
      "<ESC>:w<CR>:!g++ -g *.cpp -o %:t:r.exe<CR>",
      { silent = true, noremap = true }
    )
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="gcc *.c -o %:t:r.exe ;"<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F4>",
      "<ESC>:w<CR>:!gcc *.c -o %:t:r.exe<CR>",
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-F4>",
      "<ESC>:w<CR>:!gcc -g *.cpp -o %:t:r.exe<CR>",
      { silent = true, noremap = true }
    )
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="python %"<CR>',
      { silent = true, noremap = true }
    )
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="lua %"<CR>',
      { silent = true, noremap = true }
    )
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="javac %:t:r.java ; java %:t:r"<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(0, "n", "<F4>", "<ESC>:w<CR>:!javac %:t:r.java<CR>", { silent = true, noremap = true })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="go run %:t:r.go"<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(0, "n", "<F4>", "<ESC>:w<CR>:!go build %:t:r.go<CR>", { silent = true, noremap = true })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      '<ESC>:w<CR>:TermExec direction=float cmd="rustc %:t:r.rs ; ./%:t:r.exe"<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(0, "n", "<F4>", "<ESC>:w<CR>:!rustc %:t:r.rs<CR>", { silent = true, noremap = true })
  end,
})
