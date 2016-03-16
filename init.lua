-- Copyright (c) 2016  David Ulrich

-- Permission to use, copy, modify, and/or distribute this software for any
-- purpose with or without fee is hereby granted, provided that the above
-- copyright notice and this permission notice appear in all copies.

-- THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER
-- RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT
-- , NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH
-- THE USE OR PERFORMANCE OF THIS SOFTWARE.

local modname = "brewing"

local modpath = minetest.get_modpath(modname)

local formspec =
	"size[8,9;]"..
	
	"button[1,1;2,1;stir;Stir]"..
	"list[current_name;invS;3,1;1,1;]"..
	"button[1,2;2,1;pour_c;Pour]"..
	"list[current_name;invC;3,2;1,1;]"..
	"button[1,3;2,1;heat;Heat]"..
	"list[current_name;invF;3,3;1,1;]"..
	
	"button[5,1;2,1;ingredient;Ingredient]"..
	"list[current_name;invI;4,1;1,1;]"..
	"button[5,2;2,1;pour_v;Pour]"..
	"list[current_name;invV;4,2;1,1;]"..
	
	"list[current_player;main;0,5;8,4;]"

minetest.register_node("brewing:station_basic", {
	description = "Basic Brewing Station",
	tiles = {
		"default_furnace_top.png", "default_furnace_bottom.png",
		"default_furnace_side.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_front.png"
	},
	paramtype2 = "facedir",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	
	
})

minetest.register_abm({
	nodenames = {"brewing:station_basic"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local meta = minetest.get_meta(pos)
		
		--
		-- Inizialize inventory
		--
		local inv = meta:get_inventory()
		for listname, size in pairs({
				invS = 1,
				invC = 1,
				invF = 1,
				
				invI = 1,
				invV = 1,
		}) do
			if inv:get_size(listname) ~= size then
				inv:set_size(listname, size)
			end
		end
		-- local srclist = inv:get_list("src")
		-- local fuellist = inv:get_list("fuel")
		-- local dstlist = inv:get_list("dst")
		
		meta:set_string("formspec", formspec)
	end,
})
