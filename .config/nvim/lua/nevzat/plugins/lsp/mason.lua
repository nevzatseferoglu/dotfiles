local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("mason cannot be loaded!")
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("mason_lspconfig cannot be loaded!")
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("mason-null-ls cannot be loaded!")
	return
end

-- enable mason
mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"sumneko_lua",
		"clangd",
		"gopls",
		"pyright",
	},

	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"stylua", -- lua formatter
		"prettier",
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
