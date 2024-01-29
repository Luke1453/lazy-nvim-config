if true then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
      },
      setup = {
        -- example to setup with typescript.nvim
        html = function(_, opts)
          opts.require("nvim-lspconfig").html.setup({
            cmd = { "vscode-html-language-server", "--stdio" },
            filetypes = { "html", "tmpl" },
            init_options = {
              configurationSection = { "html", "css", "javascript" },
              embeddedLanguages = {
                css = true,
                javascript = true,
              },
              provideFormatter = true,
            },
          })
          return true
        end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
    },
  },
}
