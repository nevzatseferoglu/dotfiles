local status, lualine = pcall(require, "lualine")
if not status then
	print("lualine cannot be loaded!")
	return
end

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = "codedark",
	},
})
