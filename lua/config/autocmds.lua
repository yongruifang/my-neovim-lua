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
      '<ESC>:w<CR>:TermExec direction=float cmd="g++ *.cpp -o %:t:r ; ./%:t:r"<CR>', -- 编译 弹出终端 运行程序
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F4>",
      "<ESC>:w<CR>:!g++ *.cpp -o %:t:r<CR>", -- 编译
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-r>",
      "<ESC>:w<CR>:!g++ -g *.cpp -o %:t:r<CR>", -- 编译 + 生成调试信息
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
      '<ESC>:w<CR>:TermExec direction=float cmd="gcc *.c -o %:t:r ; ./%:t:r"<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(0, "n", "<F4>", "<ESC>:w<CR>:!gcc *.c -o %:t:r<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<C-r>",
      "<ESC>:w<CR>:!gcc -g *.c -o %:t:r<CR>",
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
      '<ESC>:w<CR>:TermExec direction=float cmd="rustc %:t:r.rs ; ./%:t:r"<CR>',
      { silent = true, noremap = true }
    )
    vim.api.nvim_buf_set_keymap(0, "n", "<F4>", "<ESC>:w<CR>:!rustc %:t:r.rs<CR>", { silent = true, noremap = true })
  end,
})
