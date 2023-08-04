local M = {
	"nvim-neorg/neorg",
	lazy = false,
	event = "VimEnter",
	build = ":Neorg sync-parsers",
	dependencies = {
		{
			"nvim-lua/plenary.nvim",
		},
		{
			"nvim-neorg/neorg-telescope",
		},
	},
}

M.opts = {
	load = {
        -- Core Features
		["core.defaults"] = {},

        -- Make things readable.
		["core.concealer"] = {
			config = {
				folds = false,
				icon_preset = "basic",
			},
		},

        -- Manage workspaces.
		["core.dirman"] = {
			config = {
				workspaces = require("neorg-workspaces").workspaces,
				default_workspace = require("neorg-workspaces").default_workspace,
			},
		},

        -- Kebindings. Actual mappings should be defined in mappings.lua
		["core.keybinds"] = {
			config = { -- Custom User Keybinds
				default_keybinds = true,
				neorg_leader = require("mappings").neorg_leader,
				hook = require("mappings").neorg_bindings,
			},
		},

        -- Table of Contents
		["core.qol.toc"] = {
			config = {
				close_after_use = true,
			},
		},

        -- Telescope integrations.
		["core.integrations.telescope"] = {},
	},
}

function M.config(_, opts)
	require("neorg").setup(opts)
end

return M