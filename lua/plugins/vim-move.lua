return {
  "booperlv/nvim-gomove",
  config = function()
    local map = vim.api.nvim_set_keymap

    map("n", "<S-h>", "<Plug>GoNSMLeft", {})
    map("n", "<S-j>", "<Plug>GoNSMDown", {})
    map("n", "<S-k>", "<Plug>GoNSMUp", {})
    map("n", "<S-l>", "<Plug>GoNSMRight", {})

    map("v", "<S-h>", "<Plug>GoVSMLeft", {})
    map("v", "<S-j>", "<Plug>GoVSMDown", {})
    map("v", "<S-k>", "<Plug>GoVSMUp", {})
    map("v", "<S-l>", "<Plug>GoVSMRight", {})

    map("n", "<C-j>", "<Plug>GoNSDDown", {})
    map("n", "<C-k>", "<Plug>GoNSDUp", {})

    map("v", "<C-j>", "<Plug>GoVSDDown", {})
    map("v", "<C-k>", "<Plug>GoVSDUp", {})
  end
}
