--[[
-- ######## start block quote^  ######
-- erase that start to see highlighting, and then lower ending brackets to remove both syntax pieces
-- open pair of left square brackets after two dashes (see Lua documentation for more details)

--https://lua-api.factorio.com/latest/Libraries.html
--https://lua-api.factorio.com/latest/Data-Lifecycle.html
require("control/separating_files")
require("control.other-directory-character")

local function my_control_function(event)
	--game table: https://lua-api.factorio.com/latest/LuaGameScript.html
	game.print(game.tick .. " hello") --concatenating game.tick so the game doesn't think this repeated message is spam and hides it
	--https://wiki.factorio.com/Tutorial:Localisation
	game.print({"locale-group.somekey"}) -- single locale string
	game.print({"", "and another: ", {"locale-group.also"}}) -- string + localised string, without a parameter in locale string
end

--simple way to handle init (ONLY when mod first loads) and reconfiguration (ONLY when mods change/update)
local function init_and_reconfig()
	--global is your mods table that is saved and loaded - the ONLY persisting storage for your mod
	global.mytable = global.mytable or {} --use existing global or make new table
	--do_initialization_for_existing_players_or_game_entities();
end



--script table: https://lua-api.factorio.com/latest/LuaBootstrap.html
script.on_event(defines.events.on_selected_entity_changed, my_control_function)
script.on_init(init_and_reconfig)
script.on_configuration_changed(init_and_reconfig)

--]]
-- ######## end block quote^ (actually need only --[[ ]] but --[[ and --]] are balanced #######
-- closing pair of right square brackets
