return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		close_if_last_window = true,
		enable_diagnostics = true,
		filesystem = {
      filtered_items = {
        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
	        '.git',
	        '.DS_Store',
	        'thumbs.db',
	      },
      },
    },
		sort_case_insensitive = true,
		group_empty_dirs = true,
		renderers = {
			directory = {
				{ "indent" },
				{ "icon" },
				{ "current_filter" },
				{ "name" },
				{ "clipboard" },
				{ "diagnostics", errors_only = true },
			},
			file = {
				{ "indent" },
				{ "icon" },
				{
					"name",
					use_git_status_colors = true,
					zindex = 10,
				},
				{ "clipboard" },
				{ "bufnr" },
				{ "modified" },
				{ "diagnostics" },
				{ "git_status" },
			},
		},
		window = {
			position = "right",
			-- width = "100%",
		},
	},
}
