-- Disable automatically hiding files in neo-tree
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        -- hide_dotfiles = false,
        -- hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        -- never_show = {},
      },
    },
  },
}
