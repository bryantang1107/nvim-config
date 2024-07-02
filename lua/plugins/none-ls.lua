return {
  "nvimtools/none-ls.nvim",
  config = function()
    local config = require("null-ls")
    config.setup({
      sources = {
        config.builtins.formatting.stylua,
        --prettier to format html,css,js
        config.builtins.formatting.prettier,
        config.builtins.formatting.gofumpt,
        config.builtins.formatting.goimports_reviser,
        config.builtins.formatting.golines,
        require("none-ls.diagnostics.eslint_d"),
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
          })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
