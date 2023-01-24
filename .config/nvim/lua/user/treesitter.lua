local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "elm", "embedded_template", "fortran", "hack", "haskell" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "tsx" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml", "ruby", "python", "golang", "c", "html" } },
  context_commentstring = {
    enable = true,
    enable_autcmd = false,
  },
  endwise = {
    enable = true,
  },
})
