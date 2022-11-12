-- import nvim-treesitter plugin safely
local status, config = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
config.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
  -- enable rainbow pairs
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {   -- Nord aurora color pallet
      "#ef616a",
      "#d08770",
      "#ebcb8b",
      "#a3be8c",
      "#b48ead",
    }, 
    -- termcolors = {} -- table of colour name strings
  },
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- enable autopairs (w/ autopair.nvim plugin)
  	autopairs = true,
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"svelte",
		"graphql",
    "bash",
		"lua",
		"vim",
		"dockerfile",
		-- "gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
})

