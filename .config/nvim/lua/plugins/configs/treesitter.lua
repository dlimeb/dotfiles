return {
	ensure_installed = {
		"lua",
		"vim",
		"markdown",
		"markdown_inline",
		"html",
		"javascript",
		"css"
	},
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = {
    enable = true
  },
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "html", "xml" },
	},
  sync_install = false,
  auto_install = true,
  ignore_install = {},
}
