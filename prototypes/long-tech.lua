function add_data(name,dict)
	for i=1,4 do
		local n = "long-" .. name .. "-" .. i .. "-v"
		table.insert(dict,{
				type = "unlock-recipe",
				recipe = n
			})
		local n = "long-" .. name .. "-" .. i
		table.insert(dict,{
				type = "unlock-recipe",
				recipe = n
			})
	end
end

function generate()
	local res = {}
	add_data("wood",res)
	add_data("iron",res)
	add_data("steel",res)
	return res;
end

data:extend(
{
  {
    type = "technology",
    name = "long-chests",
    icon = "__TostsChests__/graphics/technology/icon-normal.png",
    icon_size = 64,
    effects = generate(),
    prerequisites = {"steel-processing", "logistics-2"},
   unit =
		{
        count = 75,
        ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1}
          },
        time = 30
		}
   
 }
}
)
