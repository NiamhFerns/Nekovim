local M = {
  "goolord/alpha-nvim",
  event = "VimEnter",
  commit = "dafa11a6218c2296df044e00f88d9187222ba6b0",
}

function M.config()
  local alpha = require "alpha"
  local dashboard = require "alpha.themes.dashboard"
  dashboard.section.header.val = {
[[                              __                   '                '            ]],
[[                     /\    .-" /           *                                     ]],
[[                    /  ; .'  .'                     *          *        '        ]],
[[                   :   :/  .'                  .                                 ]],
[[                    \  ;-.'                              .                       ]],
[[       .--""""--..__/     `.                                       *        .    ]],
[[     .'           .'    `o  \                                                    ]],
[[    /                    `   ;                                            *      ]],
[[   :                  \      :     ___                               _          *]],
[[ .-;        -.         `.__.-'    / __\_   _ _ __  _ __  _   _/\   /(_)_ __ ___  ]],
[[:  ;          \     ,   ;        /__\// | | | '_ \| '_ \| | | \ \ / / | '_ ` _ \ ]],
[['._:           ;   :   (        / \/  \ |_| | | | | | | | |_| |\ V /| | | | | | |]],
[[    \/  .__    ;    \   `-.     \_____/\__,_|_| |_|_| |_|\__, | \_/ |_|_| |_| |_|]],
[[     ;     "-,/_..--"`-..__)                             |___/                   ]],
[[     '""--.._:                                                                   ]]
}  

dashboard.section.buttons.val = {
	dashboard.button("SPC SPC", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("SPC f n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("SPC f r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("SPC p p", "  Find project", ":Telescope projects theme=dropdown previewer=false<CR>"),
	dashboard.button("SPC p t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("SPC h c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("SPC q q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Eat ass. Smoke grass."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)end

return M