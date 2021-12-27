local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "gez.lsp.lsp-installer"
require("gez.lsp.handlers").setup()
require "gez.lsp.null-ls"
