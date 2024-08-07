return {
	{
		{
			"williamboman/mason.nvim",
			config = function()
				require("mason").setup()
			end,
		},
		{
			"williamboman/mason-lspconfig.nvim",
			config = function()
				require("mason-lspconfig").setup({
					ensure_installed = {
						"lua_ls",
						"jsonls",
						"html",
						"tsserver",
						"marksman",
						"cssls",
						"volar",
						"dockerls",
						"docker_compose_language_service",
						"clangd",
						"bashls",
					},
				})
			end,
		},
		{
			"neovim/nvim-lspconfig",
			config = function()
				local capabilities = require("cmp_nvim_lsp").default_capabilities()

				local lspconfig = require("lspconfig")
				lspconfig.lua_ls.setup({
					capabilities = capabilities,
				})
				lspconfig.jsonls.setup({
					capabilities = capabilities,
				})
				lspconfig.html.setup({
					capabilities = capabilities,
				})
				lspconfig.tsserver.setup({
					capabilities = capabilities,
				})
				lspconfig.marksman.setup({
					capabilities = capabilities,
				})
				lspconfig.cssls.setup({
					capabilities = capabilities,
				})
				lspconfig.volar.setup({
					capabilities = capabilities,
				})
				lspconfig.dockerls.setup({
					capabilities = capabilities,
				})
				lspconfig.docker_compose_language_service.setup({
					capabilities = capabilities,
				})
				lspconfig.clangd.setup({
					capabilities = capabilities,
				})
				lspconfig.bashls.setup({
					capabilities = capabilities,
				})

				-- Emmet LS configuration
				lspconfig.emmet_ls.setup({
					filetypes = { "html", "css", "javascript", "typescript", "jsx", "tsx", "vue", "svelte", "scss", "less", "sass", "stylus", "postcss", "markdown", "ejs" },
					init_options = {
						html = {
							options = {
								["bem.enabled"] = true,
							},
						},
					},
				})


				-- keybinds
				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			end,
		},
	},
}
