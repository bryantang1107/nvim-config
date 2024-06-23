return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_a = {
					{
						"buffers",
						show_filename_only = true,
						show_modified_status = true,

						mode = 0,
						max_length = vim.o.columns * 2 / 3,

						use_mode_colors = false,
						symbols = {
							modified = " ●",
							alternate_file = "#",
							directory = "",
						},
					},
				},
			},
		})
	end,
}
