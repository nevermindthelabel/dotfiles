return {
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- Ensure it loads first
	config = function()
		require("onedarkpro").setup({
			colors = {}, -- Override default colors or create your own
			highlights = {
				NonText = { fg = "#646A76" },
				PmenuSel = { bg = "#282C34", fg = "NONE", bold = true, italic = true },
				Pmenu = { fg = "#C5CDD9", bg = "#22252A" },

				CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
				CmpItemAbbrMatch = { fg = "#82AAFF", bg = "NONE", bold = true, italic = true },
				CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
				CmpItemMenu = { fg = "#C792EA", bg = "NONE", italic = true },

				CmpItemKindField = { fg = "#EED8DA", bg = "#B5585F" },
				CmpItemKindProperty = { fg = "#EED8DA", bg = "#B5585F" },
				CmpItemKindEvent = { fg = "#EED8DA", bg = "#B5585F" },

				CmpItemKindText = { fg = "#C3E88D", bg = "#9FBD73" },
				CmpItemKindEnum = { fg = "#C3E88D", bg = "#9FBD73" },
				CmpItemKindKeyword = { fg = "#C3E88D", bg = "#9FBD73" },

				CmpItemKindConstant = { fg = "#FFE082", bg = "#D4BB6C" },
				CmpItemKindConstructor = { fg = "#FFE082", bg = "#D4BB6C" },
				CmpItemKindReference = { fg = "#FFE082", bg = "#D4BB6C" },

				CmpItemKindFunction = { fg = "#EADFF0", bg = "#A377BF" },
				CmpItemKindStruct = { fg = "#EADFF0", bg = "#A377BF" },
				CmpItemKindClass = { fg = "#EADFF0", bg = "#A377BF" },
				CmpItemKindModule = { fg = "#EADFF0", bg = "#A377BF" },
				CmpItemKindOperator = { fg = "#EADFF0", bg = "#A377BF" },

				CmpItemKindVariable = { fg = "#C5CDD9", bg = "#7E8294" },
				CmpItemKindFile = { fg = "#C5CDD9", bg = "#7E8294" },

				CmpItemKindUnit = { fg = "#F5EBD9", bg = "#D4A959" },
				CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#D4A959" },
				CmpItemKindFolder = { fg = "#F5EBD9", bg = "#D4A959" },

				CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
				CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
				CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },

				CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
				CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
				CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
				-- css
				["@number.css"] = { fg = "#4AC2B8", italic = true },
				["@property.css"] = { fg = "#80CBC4", italic = true },
				["@property.class.css"] = { fg = "#FFCB6B", italic = true },
				-- ["@property.id.css"] = { fg = C.syntax.blue },
				-- ["@string.plain.css"] = { fg = C.syntax.green },
				["@type.tag.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.tag.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.class.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.id.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.pseudo-class.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.pseudo-element.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.attribute.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.attribute.id.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.attribute.class.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.attribute.pseudo-class.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.attribute.pseudo-element.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.child.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.descendant.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.parent.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.sibling.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.adjacent.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.combinator.deep.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.pseudo-class.not.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.pseudo-class.matches-any.css"] = { fg = "#E534AB", italic = true },
				["@type.selector.pseudo-class.any-link.css"] = { fg = "#E534AB" },
				-- ["@type.css"] = { fg = C.syntax.orange },
				-- ["@function.css"] = { fg = C.syntax.yellow },
				-- ["@function.call.css"] = { fg = C.syntax.yellow },
				-- ["@selector.css"] = { fg = C.syntax.blue },
				-- ["@selector.tag.css"] = { fg = C.syntax.blue },
				-- ["@selector.class.css"] = { fg = C.syntax.blue },
				-- ["@selector.id.css"] = { fg = C.syntax.blue },
				-- ["@selector.pseudo-class.css"] = { fg = C.syntax.blue },
				-- ["@selector.pseudo-element.css"] = { fg = C.syntax.blue },
				-- ["@attribute.css"] = { fg = C.syntax.blue },
				-- ["@attribute.id.css"] = { fg = C.syntax.blue },
				-- ["@attribute.class.css"] = { fg = C.syntax.blue },
				-- ["@attribute.pseudo-class.css"] = { fg = C.syntax.blue },
				-- ["@attribute.pseudo-element.css"] = { fg = C.syntax.blue },
				-- ["@operator.css"] = { fg = C.syntax.orange },
				-- ["@operator.logical.css"] = { fg = C.syntax.orange },
				-- ["@operator.arithmetic.css"] = { fg = C.syntax.orange },
				-- ["@operator.bitwise.css"] = { fg = C.syntax.orange },
				-- ["@operator.assignment.css"] = { fg = C.syntax.orange },
				-- ["@operator.comparison.css"] = { fg = C.syntax.orange },
				-- ["@operator.ternary.css"] = { fg = C.syntax.orange },
				-- ["@operator.regex.css"] = { fg = C.syntax.orange },
				--["@rule.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.font-face.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.keyframes.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.media.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.mixin.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.mixin.content.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.mixin.arguments.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.mixin.arguments.variable.css"] = { fg = C.syntax.blue },
				-- ["@rule.at-rule.mixin.arguments.literal.css"] = { fg = C.syntax.blue },
				-- ["@property.css"] = { fg = "#EADFF0", bg = "#6C8D0E" },
				-- json
				["@label.json"] = { fg = "#93deff", italic = true },
			},                      -- Override default highlight groups or create your own
			styles = {              -- For example, to apply bold and italic, use "bold,italic"
				types = "NONE",       -- Style that is applied to types
				methods = "bold, italic", -- Style that is applied to methods
				numbers = "NONE",     -- Style that is applied to numbers
				strings = "NONE",     -- Style that is applied to strings
				comments = "italic",  -- Style that is applied to comments
				keywords = "bold,italic", -- Style that is applied to keywords
				constants = "italic", -- Style that is applied to constants
				functions = "italic", -- Style that is applied to functions
				operators = "NONE",   -- Style that is applied to operators
				variables = "NONE",   -- Style that is applied to variables
				parameters = "NONE",  -- Style that is applied to parameters
				conditionals = "NONE", -- Style that is applied to conditionals
				virtual_text = "italic", -- Style that is applied to virtual text
			},
			filetypes = {           -- Override which filetype highlight groups are loaded
				comment = true,
				go = true,
				html = true,
				java = true,
				javascript = true,
				lua = true,
				markdown = true,
				php = true,
				python = true,
				ruby = true,
				rust = true,
				scss = true,
				toml = true,
				typescript = true,
				typescriptreact = true,
				vue = true,
				xml = true,
				yaml = true,
			},
			plugins = { -- Override which plugin highlight groups are loaded
				aerial = true,
				barbar = true,
				copilot = true,
				dashboard = true,
				flash_nvim = true,
				gitsigns = true,
				hop = true,
				indentline = true,
				leap = true,
				lsp_saga = true,
				lsp_semantic_tokens = true,
				marks = true,
				mini_indentscope = true,
				neotest = true,
				neo_tree = true,
				nvim_cmp = true,
				nvim_bqf = true,
				nvim_dap = true,
				nvim_dap_ui = true,
				nvim_hlslens = true,
				nvim_lsp = true,
				nvim_navic = true,
				nvim_notify = true,
				nvim_tree = true,
				nvim_ts_rainbow = true,
				op_nvim = true,
				packer = true,
				-- rainbow_delimeters = true,
				polygot = true,
				startify = true,
				telescope = true,
				toggleterm = true,
				treesitter = true,
				trouble = true,
				vim_ultest = true,
				which_key = true,
			},

			options = {
				cursorline = true,              -- Use cursorline highlighting?
				transparency = false,           -- Use a transparent background?
				terminal_colors = true,         -- Use the theme's colors for Neovim's :terminal?
				highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
			},
		})
		vim.cmd.colorscheme("onedark_dark")
	end,
}
