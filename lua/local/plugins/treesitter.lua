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
    "php",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
    "markdown_inline",
		"graphql", "bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
})
