-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	print("telescope cannot be loaded!")
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	print("actions cannot be loaded!")
	return
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		prompt_prefix = "🔍 ",
		selection_caret = "> ",
		mappings = {
			i = {
				["<esc>"] = actions.close, -- prevent from pressing <esc> double
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
})

telescope.load_extension("fzf")
