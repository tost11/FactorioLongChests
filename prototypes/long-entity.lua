cont_size = {}
cont_size["wood"] = 16
cont_size["iron"] = 32
cont_size["steel"] = 48

function define_box(ty,si,inv)
	local sw = 3.0
	local sh = 0.5
	local dw = 0.5
	local dh = 0.5
	local col_pox = 0.25
	local wh = (sw * si) + (dw * (si - 1))
	local result = 
	{
		type = "container",
		name = "long-" .. ty .. "-" .. si,
		icon = "__TostsChests__/graphics/icons/long-" .. ty .. "-" .. si .. "-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "long-" .. ty .. "-" .. si},
		max_health = 300,
		corpse = "medium-remnants",
		collision_box = {{-wh + col_pox, -sh + col_pox}, {wh - col_pox, sh - col_pox}},
		selection_box = {{-wh, -sh}, {wh, sh}},
		fast_replaceable_group =  "container",
		inventory_size = cont_size[ty] * 6 * si,
		open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
		close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
		picture =
		{
		  filename = "__TostsChests__/graphics/entity/long-" .. ty .. "-" .. si .. ".png",
		  priority = "extra-high",
		  width = 192 + 192 * (si-1) + 32 * (si-1),
		  height = 32,
		},
		circuit_wire_connection_point =
		{
		  shadow =
		  {
			red = {0.734375, 0.453125},
			green = {0.609375, 0.515625},
		  },
		  wire =
		  {
			red = {0.40625, 0.21875},
			green = {0.40625, 0.375},
		  }
		},
		circuit_wire_max_distance = 9
	}
	return result;
end
	
function define_box_v(ty,si)
	local sh = 3.0
	local sw = 0.5
	local dh = 0.5
	local dw = 0.5
	local col_pox = 0.25
	local wh = (sh * si) + (dh * (si - 1))
	local result = 
	{
		type = "container",
		name = "long-" .. ty .. "-" .. si .. "-v",
		icon = "__TostsChests__/graphics/icons/long-" .. ty .. "-" .. si .. "-v-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "long-" .. ty .. "-" .. si .. "-v"},
		max_health = 300,
		corpse = "medium-remnants",
		collision_box = {{-sw + col_pox, -wh + col_pox}, {sw - col_pox, wh - col_pox}},
		selection_box = {{-sw, -wh}, {sw, wh}},
		fast_replaceable_group =  "container",
		inventory_size = cont_size[ty] * 6 * si,
		open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
		close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
		picture =
		{
		  filename = "__TostsChests__/graphics/entity/long-" .. ty .. "-" .. si .. "-v.png",
		  priority = "extra-high",
		  height = 192 + 192 * (si-1) + 32 * (si-1),
		  width = 46,
		  shift = {0.20, 0}
		},
		circuit_wire_connection_point =
		{
		  shadow =
		  {
			red = {0.734375, 0.453125},
			green = {0.609375, 0.515625},
		  },
		  wire =
		  {
			red = {0.40625, 0.21875},
			green = {0.40625, 0.375},
		  }
		},
		circuit_wire_max_distance = 9
	}

	
	return result;
end

data:extend({
	define_box("wood", 1),
	define_box_v("wood", 1),
	define_box("iron", 1),
	define_box_v("iron", 1),
	define_box("steel", 1),
	define_box_v("steel", 1),
	
	define_box("wood", 2),
	define_box_v("wood", 2),
	define_box("iron", 2),
	define_box_v("iron", 2),
	define_box("steel", 2),
	define_box_v("steel", 2),
	
	define_box("wood", 3),
	define_box_v("wood", 3),
	define_box("iron", 3),
	define_box_v("iron", 3),
	define_box("steel", 3),
	define_box_v("steel", 3),
	
	define_box("wood", 4),
	define_box_v("wood", 4),
	define_box("iron", 4),
	define_box_v("iron", 4),
	define_box("steel", 4),
	define_box_v("steel", 4)
})
