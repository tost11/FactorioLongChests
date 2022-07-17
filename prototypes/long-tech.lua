function add_data(name)

    local res = {}

	for i=1,4 do
		local n = "long-" .. name .. "-" .. i .. "-v"
		table.insert(res,{
				type = "unlock-recipe",
				recipe = n
			})
		local n = "long-" .. name .. "-" .. i
		table.insert(res,{
				type = "unlock-recipe",
				recipe = n
			})
	end

	return res
end

function generateData()

    local res = {
      {
        type = "technology",
        name = "long-chests-wood",
        icon = "__TostsChests__/graphics/technology/icon-normal.png",
        icon_size = 64,
        effects = add_data("wood",res),
        prerequisites = {},
        unit =
            {
            count = 5,
            ingredients =
              {
                {"automation-science-pack", 1},
              },
            time = 5
        }
    },{
        type = "technology",
        name = "long-chests-iron",
        icon = "__TostsChests__/graphics/technology/icon-normal.png",
        icon_size = 64,
        effects = add_data("iron"),
        prerequisites = {},
        unit =
        {
          count = 10,
          ingredients =
            {
              {"automation-science-pack", 1}
            },
          time = 5
        }
    },{
        type = "technology",
        name = "long-chests-steel",
        icon = "__TostsChests__/graphics/technology/icon-normal.png",
        icon_size = 64,
        effects = add_data("steel"),
        prerequisites = {"steel-processing"},
        unit =
         {
           count = 25,
           ingredients =
             {
               {"automation-science-pack", 1}
             },
           time = 5
        }
      }
    }

    if mods["boblogistics"] then
      table.insert(res, {
           type = "technology",
           name = "long-chests-brass",
           icon = "__TostsChests__/graphics/technology/icon-normal.png",
           icon_size = 64,
           effects = add_data("brass"),
           prerequisites = {"zinc-processing"},
           unit =
             {
               count = 20,
               ingredients =
                 {
                   {"automation-science-pack", 1},
                   {"logistic-science-pack", 1}
                 },
               time = 30
           }
      })

      table.insert(res, {
            type = "technology",
            name = "long-chests-titanium",
            icon = "__TostsChests__/graphics/technology/icon-normal.png",
            icon_size = 64,
            effects = add_data("titanium"),
            prerequisites = {"titanium-processing"},
            unit =
              {
                count = 30,
                ingredients =
                  {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1}
                  },
                time = 10
            }
      })

    end


    return res
end


data:extend(generateData())
