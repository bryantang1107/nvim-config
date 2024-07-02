return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
    local opts = {
      auto_install = true,
      ensure_installed = { "javascript", "typescript", "c", "lua", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
    }
    config.setup(opts)
	end,
}
