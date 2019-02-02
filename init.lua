--Floors mod

minetest.register_node("floors:wood_walkway", {
	tiles = {"default_wood.png"},
    is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
    description = ("Wood Walkway"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		}
	}
})

minetest.register_node("floors:gravel_walkway", {
	tiles = {"default_gravel.png"},
    is_ground_content = false,
    groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
    description = ("Gravel Walkway"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		}
	}
})

minetest.register_node("floors:wood_stone_brick", {
	tiles = {"default_stone_brick.png"},
    is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
    description = ("Stonebrick Walkway"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		}
	}
})

local dyes = {
	{"white",      "White"},
	{"grey",       "Grey"},
	{"black",      "Black"},
	{"red",        "Red"},
	{"yellow",     "Yellow"},
	{"green",      "Green"},
	{"cyan",       "Cyan"},
	{"blue",       "Blue"},
	{"magenta",    "Magenta"},
	{"orange",     "Orange"},
	{"violet",     "Violet"},
	{"brown",      "Brown"},
	{"pink",       "Pink"},
	{"dark_grey",  "Dark Grey"},
	{"dark_green", "Dark Green"},
}

for i = 1, #dyes do
	local name, desc = unpack(dyes[i])

	minetest.register_node("floors:carpet" .. name, {
	description = desc .. " Carpet",
	tiles = {"wool_" .. name .. ".png"},
	is_ground_content = false,
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
	flammable = 3, wool = 1},
	sounds = default.node_sound_defaults(),
    drawtype = "nodebox",
	paramtype = "light",
    node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
    }
}
	})

end
