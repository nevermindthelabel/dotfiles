return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
				border = "rounded",
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"emmet_ls",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d", -- js linter
			},
		})
	end,
	-- {
	-- 	"williamboman/mason.nvim",
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("mason").setup()
	-- 	end,
	-- },
	-- {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- 	lazy = false,
	-- 	opts = {
	-- 		auto_install = true,
	-- 	},
	-- },
	-- {
	-- 	"neovim/nvim-lspconfig",
	-- 	lazy = false,
	-- 	config = function()
	-- 		local capabilities = require("cmp_nvim_lsp").default_capabilities()
	--
	-- 		local lspconfig = require("lspconfig")
	-- 		lspconfig.tsserver.setup({
	-- 			capabilites = capabilities,
	-- 		})
	-- 		lspconfig.html.setup({
	-- 			capabilites = capabilities,
	-- 		})
	-- 		lspconfig.lua_ls.setup({
	-- 			capabilites = capabilities,
	-- 		})
	--
	-- 		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	-- 		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
	-- 		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
	-- 		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	-- 	end,
	-- },
}
