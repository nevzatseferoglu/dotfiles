local setup, comment = pcall(require, "Comment")
if not setup then
	print("comment cannot be loaded!")
	return
end

comment.setup()
