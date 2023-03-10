local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({ prefer_local = "node_modules/.bin" }),
    -- formatting.eslint.with({ only_local = "node_modules/.bin" }),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.stylua,
    formatting.gofmt,
    formatting.goimports,
    --[[ formatting.rubocop, ]]
    --[[ diagnostics.rubocop, ]]
    --[[ diagnostics.pylint, ]]
    diagnostics.eslint.with({ only_local = "node_modules/.bin" }),
    diagnostics.golangci_lint,
  },
})
