return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Apps",
						group = "DiagnosticHint",
						action = "Telescope app",
						key = "a",
					},
					{
						desc = " dotfiles",
						group = "Number",
						action = "Telescope dotfiles",
						key = "d",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}

-- return {
-- 	"goolord/alpha-nvim",
-- 	dependencies = {
-- 		"nvim-tree/nvim-web-devicons",
-- 	},
--
-- 	config = function()
-- 		local alpha = require("alpha")
-- 		local dashboard = require("alpha.themes.dashboard")
--
-- 		dashboard.section.header.val = {
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                     ]],
-- 			[[       ████ ██████           █████      ██                     ]],
-- 			[[      ███████████             █████                             ]],
-- 			[[      █████████ ███████████████████ ███   ███████████   ]],
-- 			[[     █████████  ███    █████████████ █████ ██████████████   ]],
-- 			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
-- 			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
-- 			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 		}
--
-- 		dashboard.section.buttons.val = {
-- 			dashboard.button("e", "New file", "<cmd>ene <CR>"),
-- 			dashboard.button("SPC f f", "Find file"),
-- 		}
-- 		_Gopts = {
-- 			position = "center",
-- 			hl = "Type",
-- 			-- wrap = "overflow";
-- 		}
--
-- 		-- local function footer()
-- 		-- 	return "Programming is an art of patience not talent"
-- 		-- end
--
-- 		-- dashboard.section.footer.val = footer()
--
-- 		dashboard.opts.opts.noautocmd = true
-- 		alpha.setup(dashboard.opts)
-- 	end,
-- }
