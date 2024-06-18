return {
	"olexsmir/gopher.nvim",
	ft = "go",
	config = function(_, opts)
		require("gopher").setup(opts)
		vim.keymap.set("n", "<leader>gsj", ":GoTagAdd json <CR>", {})
	end,
	build = function() end,
}
