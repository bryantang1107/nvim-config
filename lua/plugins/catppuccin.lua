return  { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000, 
  lazy = false, 
  --config func will run when lazy loads
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
