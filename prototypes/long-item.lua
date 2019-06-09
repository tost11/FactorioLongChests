local function char(num)
  return string.char(string.byte("a")+num)
end

men_order = {}
men_order["wood"] = 0
men_order["iron"] = 1
men_order["steel"] = 2

function define_box_item(ty,si)
	local result = 
	{
		type = "item",
		name = "long-" .. ty .. "-" .. si,
		icon =  "__TostsChests__/graphics/icons/long-" .. ty .. "-" .. si .. "-icon.png", 
		icon_size = 32,
		subgroup = "long-chest-" .. ty,
		order = "a-b-c",
		place_result = "long-" .. ty .. "-" .. si,
		stack_size = 32
	}
	return result
end

function define_box_item_v(ty,si)
	local result = 
	{
		type = "item",
		name = "long-" .. ty .. "-" .. si .. "-v",
		icon =  "__TostsChests__/graphics/icons/long-" .. ty .. "-" .. si .. "-v-icon.png", 
		icon_size = 32,
		subgroup = "long-chest-" .. ty .. "-v",
		order = "a-b-c",
		place_result = "long-" .. ty .. "-" .. si .. "-v",
		stack_size = 32
	}	
	return result
end


data:extend(
{
	define_box_item("wood",1),
	define_box_item_v("wood",1),
	define_box_item("iron",1),
	define_box_item_v("iron",1),
	define_box_item("steel",1),
	define_box_item_v("steel",1),
	
	define_box_item("wood",2),
	define_box_item_v("wood",2),
	define_box_item("iron",2),
	define_box_item_v("iron",2),
	define_box_item("steel",2),
	define_box_item_v("steel",2),
	
	define_box_item("wood",3),
	define_box_item_v("wood",3),
	define_box_item("iron",3),
	define_box_item_v("iron",3),
	define_box_item("steel",3),
	define_box_item_v("steel",3),
	
	define_box_item("wood",4),
	define_box_item_v("wood",4),
	define_box_item("iron",4),
	define_box_item_v("iron",4),
	define_box_item("steel",4),
	define_box_item_v("steel",4),
}
)
