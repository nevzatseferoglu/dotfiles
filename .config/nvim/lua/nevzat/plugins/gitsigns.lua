local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	print("gitsigns cannot be loaded!")
	return
end

gitsigns.setup()
