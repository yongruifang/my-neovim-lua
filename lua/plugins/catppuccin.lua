return {
  "catppuccin/nvim", 
  name="catppuccin", 
  priority=1000,

  config = function()
    -- require("catppuccin").setup()
    -- yes, the setup command will automatically run
    vim.cmd.colorscheme "catppuccin"
  end
}

