function generateData()
    local res = {{
        type = "item-group",
        name = "Chests",
        order = "c-1",
        inventory_order = "c-1",
        icon = "__TostsChests__/graphics/technology/icon-normal.png",
        icon_size = 64
    }}

    local normalTypes = {"wood","iron","steel"}

    local i = 0
    for _, name in ipairs(normalTypes) do
        i = i + 1
        table.insert(res, {
            type = "item-subgroup",
            name = "long-chest-" .. name,
            group = "Chests",
            order = "" .. i
        })
        table.insert(res, {
            type = "item-subgroup",
            name = "long-chest-" .. name .. "-v",
            group = "Chests",
            order = "" .. i
        })
    end

    if mods["boblogistics"] then

        local bobTypes = {"brass","titanium"}

        local i = 0
        for _, name in ipairs(bobTypes) do
            i = i + 1
            table.insert(res, {
                type = "item-subgroup",
                name = "long-chest-" .. name,
                group = "Chests",
                order = "" .. i
            })
            table.insert(res, {
                type = "item-subgroup",
                name = "long-chest-" .. name .. "-v",
                group = "Chests",
                order = "" .. i
            })
        end

    end

    return res
end

data:extend(generateData())
