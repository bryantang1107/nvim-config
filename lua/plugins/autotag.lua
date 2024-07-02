return {
  "windwp/nvim-ts-autotag",
  config = function()
    local opts = {
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
      },

      per_filetype = {
        enable_close = false,
        ["html"] = {
        }
      }
    }
    local config = require("nvim-ts-autotag")
    config.setup(opts)
  end
}
