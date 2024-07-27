return {
	"vimwiki/vimwiki",
	init = function()
		-- Default directory, syntax and file type,
		-- symbols for spaces, auto re-index tags db
		vim.g.vimwiki_list = {
			{
				path = "~/wiki",
				syntax = "markdown",
				ext = ".md",
				links_space_char = "_",
				auto_tags = 1,
			},
		}

    -- Set filetype to 'vimwiki', but only for files in the
    -- above directory, not all markdown files
    vim.g.vimwiki_global_ext = 0

    -- Auto add an h1 when creating a doc
    vimwiki_auto_header = 1

    -- Each header level gets a different colour
    vimwiki_hl_headers = 1

    -- Checked list items get a different colour
    vimwiki_hl_cb_checked = 1

	end,
	config = function()
    vim.cmd([[hi def link VimwikiList Number]])
	end,
}
