local setup, go = pcall(require, "go")
if not setup then
	print("go(golang) cannot be loaded!")
	return
end

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimport()
	end,
	group = format_sync_grp,
})

go.setup({})
