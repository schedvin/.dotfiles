local M = {}

M.ensure_installed = {
  bashls = {},
  tsserver = {},
}

M.setup_handlers = function()
  -- import lspconfig plugin safely
  local lspconfig_status, lspconfig = pcall(require, "lspconfig")
  if not lspconfig_status then
    return
  end

  lspconfig.bashls.setup {
    on_attach = function(_, bufnr)
      -- print("Attached")
    end
  }
end

return M
-- vim: ts=2 sts=2 sw=2 et
