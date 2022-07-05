local util = require 'lspconfig.util'

local bin_name = 'ruby-lsp'
local cmd = { 'bundle', 'exec', bin_name }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', 'bundle', 'exec',  bin_name }
end

return {
  default_config = {
    cmd = cmd,
    settings = {
      ruby_lsp = {
      },
    },
    init_options = {  },
    filetypes = { 'ruby' },
    root_dir = util.root_pattern('Gemfile', '.git'),
  },
  docs = {
    description = [[
https://github.com/Shopify/ruby-lsp

Ruby LSP

This gem is an implementation of the language server protocol specification for Ruby, used to improve editor features.

You can install ruby-lsp by adding it to your Gemfile

```sh
bundle add ruby-lsp --group=development
bundle install
```
    ]],
    default_config = {
      root_dir = [[root_pattern("Gemfile", ".git")]],
    },
  },
}

