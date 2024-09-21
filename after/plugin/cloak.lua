require("cloak").setup({
  enabled = true,                -- Enable the plugin.
  cloak_character = "*",         -- Character used to cloak the sensitive data.
  highlight_group = "Comment",   -- Visual appearance of the cloaked data will match the "Comment" group.
  patterns = {
    {
      -- List of file patterns where the cloaking should apply.
      file_pattern = {
          ".env*",               -- Any file starting with ".env" like ".env.local", ".env.production", etc.
          "wrangler.toml",       -- Specifically the "wrangler.toml" file.
          ".dev.vars",           -- Specifically the ".dev.vars" file.
      },
      -- In the above files, cloak the value part of `key=value` pairs.
      cloak_pattern = "=.+"      -- The pattern matches an equals sign and any character sequence after it.
    },
  },
})
