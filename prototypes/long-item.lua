local function char(num)
  return string.char(string.byte("a")+num)
end

men_order = {}
men_order["wood"] = 0
men_order["iron"] = 1
men_order["steel"] = 2
men_order["brass"] = 3

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


function generateData()
    local res = {}

    local normalTypes = {"wood","iron","steel"}

    for _, name in ipairs(normalTypes) do
        for i = 1,4,1
        do
            table.insert(res, define_box_item(name, i))
            table.insert(res, define_box_item_v(name, i))
        end
    end

    if mods["boblogistics"] then

      local bobTypes = {"brass","titanium"}

      for _, name in ipairs(bobTypes) do
          for i = 1,4,1
          do
              table.insert(res, define_box_item(name, i))
              table.insert(res, define_box_item_v(name, i))
          end
      end
    end

    return res;
end


data:extend(generateData())
