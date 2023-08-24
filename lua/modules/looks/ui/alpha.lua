local M = {
  "goolord/alpha-nvim",
  event = "VimEnter",
}

function M.config()
  local alpha = require "alpha"
  local dashboard = require "alpha.themes.dashboard"
  dashboard.section.header.val = {
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠚]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠰⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠖⠁⠀⠀⠀⠀]],
    [[⠀⠀⢀⡦⢤⡀⠀⢠⣧⠈⠓⢦⣀⠀⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠖⠋⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⢠⣄⣿⠀⠉⠁⠈⣿⣲⣶⣦⣐⠛⠋⠉⠁⠀⠀⠀⠈⠉⠙⠒⠶⠒⠒⠚⠉⠉⠉⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠖⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠]],
    [[⠀⠘⠓⠋⠀⠀⠀⠀⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣶⣶⣶⣶⣶⣶⣶⣶⣿⣠⠇⠀⢀⣤⣤⠀⠀⠀⠰⣶⣮⠽⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠔⠊⠁]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣶⣶⣯⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⡟⠀⠀⣾⣿⣼⠀⠀⠀⠀⠱⢄⣀⠀⠀⠀⠀⢀⣀⣀⡤⠤⠖⠊⠉⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⡿⢹⣿⣿⣿⣟⠸⣿⣿⣿⣧⣴⣾⣿⡟⠀⠀⠀⢸⣿⣷⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⡟⣼⡟⠀⣿⡿⣽⠟⠀⠀⢻⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠙⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣥⣿⣤⢠⡟⠀⠋⢀⣄⣀⣀⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠈⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⡼⠋⢹⣿⣿⣿⠃⠘⣿⣿⡏⠁⠀⠀⠈⠱⢿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠈⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⠀⠙⠿⠛⠀⠀⠀⠀⠀⠘⠿⠿⠛⣿⣿⣿⣿⣿⠙⠆⠀⠀⠀⠀⠀⢰⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣇⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⠀⠀⢰⣿⣿⣿⡿⠉⠹⣄⠀⠀⠀⠀⢠⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⢀⠀⠀⠀⠀⠀⠀⢁⡨⠟⠋⠉⠉⠉⠉⠙⠳⢤⣀⣠⣶⣿⠿⠿⠋⠁⠀⣴⣯⡍⠹⢤⣴⡿⠋⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⢠⡟⠀⠀⠀⠀⠀⢠⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣄⣍⣠⣄⣤⣼⣿⣿⣿⣿⣧⡀⢿⡀⠀⠀⠀⠀⠸⡀⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⣤⢸⡄⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠧⢼⡁⠀⠀⠀⠀⠀⡇⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠻⠼⠅⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⣀⣶⠚⠿⢿⡿⠋⠁⠀⣹⣿⣿⣾⣿⠛⠀⣸⠉⢱⡀⠀⠀⠀⠀⢸⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⢹⣉⣳⡶⠚⠀⠀⠀⠸⣍⢁⠈⠉⠀⢀⡾⠁⠀⢠⡇⠀⠀⠀⠀⣼⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⢀⡞⠉⣷⠶⠶⠋⠀⠀⠀⡼⠁⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⡋⣀⠜⠁⠀⠀⠀⠀⠀⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠁⠀⠀⠀⠀⠀⣠⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠦⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠑⠒⠒⠒⠒⠒⠚⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[        __ _   ____   __ _    __    _  _   __   _  _       ]],
    [[       (  ( \ (  __) (  / )  /  \  / )( \ (  ) ( \/ )      ]],
    [[       /    /  ) _)   )  (  (  O ) \ \/ /  )(  / \/ \      ]],
    [[       \_)__) (____) (__\_)  \__/   \__/  (__) \_)(_/      ]],
    -- [[        ⠀⠀⠀⠀⠀⠀⠀ ⠀⢠⠶⣒⠒⠠⠤⠤⠤⠤⢤⣤⠒⠉⠉⠉⠛⢧⠉⠉⠲⣤⣈⠉⠢⢄⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠙⣷⣦⣀⠀⠀⢀⠄⠈⠀⣉⡡⠼⠯⢍⣓⠒⠂⠬⣿⡑⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⠈⣿⡿⠟⠛⢗⡒⠶⢿⣅⠀⠀⠀⠀⠈⠑⢤⣀⠀⠉⠉⠁⠉⠉⠑⠒⠲⠤⣤⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡵⠊⠁⡀⠀⠀⠀⠈⢢⠀⠈⠣⠀⠀⠀⠀⠀⠈⢿⢏⠢⣄⣀⣀⣤⡴⠒⠈⢡⠃⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⣼⣤⡄⠀⠀⠀⠀⢳⠀⠀⢱⠀⠀⠀⠀⠀⠘⡄⢀⠈⢢⡻⣿⠀⠀⢠⠎⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⠀⠀⣼⠏⢹⠇⠀⠀⢠⠀⠀⡇⠀⠈⢇⠀⠀⠀⠀⠀⢷⠘⡆⠀⠀⠹⣆⠔⢇⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠃⠀⢰⣿⠄⡇⢸⠀⠀⠀⠀⠀⠁⠀⠀⠐⠀⠀⠀⠀⠀⢸⡄⢱⠀⠀⡆⢻⣷⣼⣆⡀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⢻⠀⠀⡟⠁⠀⡇⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠘⡆⠀⢸⠘⣧⠈⣿⠉⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⢁⡇⠀⢸⠀⣀⡜⠁⡇⠀⠀⠀⠀⠀⡆⠀⢠⠂⠀⠀⠀⠀⠀⢀⠀⠀⡇⠀⠀⡇⢹⠀⢹⡄⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⡼⠇⠀⢸⠸⡿⠒⢲⠃⠀⡠⠁⢀⠜⠀⠀⡜⠀⠀⠀⠀⠀⠀⡘⠀⠀⡇⠀⠀⡇⠸⠀⠘⡇⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠇⠀⠀⣏⡜⣁⡴⠃⠀⠔⠁⡠⠊⠀⢀⡼⠁⠀⠀⠀⠀⠀⣰⠁⠀⢀⠇⠀⠀⡇⠀⠀⠀⠃⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢋⠀⡇⣀⣿⡿⢻⣦⣤⣤⡤⠮⠤⣤⣴⡟⠁⠀⠀⠀⠀⠀⡰⠃⠀⠀⡼⠀⠀⢠⠁⢠⠀⠀⠀⠀]],
    -- [[⠀⠀⡖⠒⢄⠀⠀⠀⠀⢀⡤⠖⢁⡇⠀⠀⡇⠀⣽⡀⠸⣿⣿⣿⣿⠀⠀⠈⠁⠈⠙⣷⣶⣤⠤⠀⣀⡠⠆⡰⠁⠀⢀⠇⠀⣸⠀⠀⠀⠀]],
    -- [[⠀⠀⠘⢄⠀⠣⡀⠸⠉⠏⠀⠀⢸⡀⠠⠀⡇⠀⣿⡇⠀⠙⠛⠓⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⣿⣱⡾⠃⠀⣠⡞⠀⢠⠇⠀⠀⠀⠀]],
    -- [[⠀⠤⢄⠀⠳⡀⠑⢆⠀⠱⡀⠀⠀⢧⠀⡄⢁⠀⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠃⠀⢈⣛⣩⡔⠊⠀⠣⢀⡏⠀⠀⠀⠀⢩]],
    -- [[⢱⡤⠀⢙⣦⣸⠀⠀⠃⠀⠈⢲⣤⡀⠳⣼⣾⡀⢸⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢀⡇⠀⠀⢀⡾⠁⠀⠀⠀⠀⣸]],
    -- [[⠀⠑⢄⠀⠑⢌⠀⠀⠀⠀⠀⠀⢇⠹⡀⠻⢿⡇⢸⣿⠿⣿⡗⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⣀⡤⣶⣾⣇⠀⣇⢀⣠⠊⠀⠀⠀⠀⠀⡠⠛]],
    -- [[⠀⠀⠘⠯⡉⠳⣄⠀⠀⠀⠀⠀⣼⠹⣧⡔⡟⠙⣼⣷⠀⠸⠀⢼⡇⠉⢻⠛⠻⠿⢿⡿⠋⠁⢠⣿⣉⣙⣿⣟⣉⠀⠀⣀⡀⠤⢶⠯⠀⠀]],
    -- [[⠀⠀⠀⠀⢸⣦⡈⠀⠀⠀⠀⢰⠿⣼⣿⠀⡇⠀⠹⣿⣄⠃⠀⠀⡇⠀⢀⡵⢖⠒⠉⠀⠀⢀⠎⠛⢻⠛⣿⣿⡿⠿⣿⣿⠳⡀⠁⠀⠀⠀]],
    -- [[⠀⠀⠀⣰⠋⢻⠙⠢⠤⡠⠴⡋⠸⡇⢸⠀⢻⠘⠀⢿⣿⣦⣼⣀⡇⣠⣿⠒⣌⣆⠀⠀⢀⡞⠀⢀⠃⢠⣿⣿⡇⠀⠀⠈⠲⣷⡄⠀⠀⠀]],
    -- [[⠀⢠⠞⢻⠀⠈⣆⢆⠀⢆⠀⢰⠀⠥⢸⡆⠘⡆⠇⢸⣾⠈⢿⠚⠷⣹⠁⠉⡹⠹⡀⣠⢻⠁⠀⡘⠀⠸⡿⣿⡇⠀⠀⢀⣴⣿⡇⠀⠀⠀]],
    -- [[⠀⡇⠀⠸⠀⠀⠘⢞⡆⠈⠄⢀⡇⠀⢸⣷⡘⣇⠰⣿⡇⠀⡜⠃⠀⣧⠤⣤⡇⠀⠉⠁⡆⠀⠀⡇⠀⠀⠀⡆⠀⢀⠔⢡⡯⡟⣇⠀⠀⠀]],
    -- [[⠀⢱⠀⠀⠀⠀⠀⠀⠉⠏⠉⠁⠀⠀⢸⠙⣷⠋⠀⢻⡇⠀⣿⠀⠘⠻⣯⠽⠀⠀⠀⢰⠁⠀⣸⡇⠀⠠⠀⡇⢠⠊⠀⣌⠴⡇⢸⡆⠀⠀]],
    -- [[⠀⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣠⡿⠀⠀⠘⣿⠀⢾⣧⠀⠀⠀⠉⠒⠦⠄⡞⠀⢀⠟⡇⠀⠀⣆⣇⠇⠀⠀⣇⠴⢇⠈⢃⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⠀⠀⠀⠀⡀⡟⡄⢸⠈⢢⠀⠀⠀⠀⠀⢀⠇⠀⢸⠀⣡⠀⠀⠘⣿⠀⠀⠀⠸⡀⠈⠀⠀⠙⠒]],
    -- [[   __ _   ____   __ _    __    _  _   __   _  _   ]],
    -- [[  (  ( \ (  __) (  / )  /  \  / )( \ (  ) ( \/ )  ]],
    -- [[  /    /  ) _)   )  (  (  O ) \ \/ /  )(  / \/ \  ]],
    -- [[  \_)__) (____) (__\_)  \__/   \__/  (__) \_)(_/  ]],
  }
  dashboard.section.buttons.val = {
    dashboard.button("SPC .", "  Notes", ":Telescope neorg switch_workspace<CR>"),
    dashboard.button("SPC p p", "  Projects", ":Telescope projects theme=dropdown previewer=false<CR>"),
    dashboard.button("SPC b r", "  Recently Used Files", ":Telescope oldfiles <CR>"),
    dashboard.button("SPC b N", "  New File", ":ene <BAR> startinsert <CR>"),
    dashboard.button("SPC h c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
    dashboard.button("SPC w q", "  Quit Neovim", ":qa<CR>"),
  }

  local function footer()
    -- NOTE: requires the fortune-mod package to work
    -- local handle = io.popen("fortune")
    -- local fortune = handle:read("*a")
    -- handle:close()
    -- return fortune
    return "Meow~"
  end

  dashboard.section.footer.val = footer()

  dashboard.section.footer.opts.hl = "Type"
  dashboard.section.header.opts.hl = "Include"
  dashboard.section.buttons.opts.hl = "Keyword"

  dashboard.opts.opts.noautocmd = true
  alpha.setup(dashboard.opts)
end

return M
