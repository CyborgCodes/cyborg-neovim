require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "tsx", "lua", "html", "typescript", "css", "css" },

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
    autotag = {
        enable = true,
    }
}
