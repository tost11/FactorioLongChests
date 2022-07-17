function gen_data(name,cost,amount,dict,count)
	for i=1,count do
		local nb = "long-" .. name .. "-"
		local n = nb .. i
		local n2 = nb .. (i-1)
		local res = {
			type = "recipe",
			name = n,
			enabled = false,
			energy_required = 6,
			ingredients =
			{
				{cost, amount},
			},
			result = n
		}
		if i > 1 then
			table.insert(res.ingredients,{n2,1})
		end
		table.insert(dict,res);
		
		n = n .. "-v"
		n2 = n2 .. "-v"
		local res = {
			type = "recipe",
			name = n,
			enabled = false,
			energy_required = 6,
			ingredients =
			{
				{cost, amount},
			},
			result = n
		}
		if i > 1 then
			table.insert(res.ingredients,{n2,1})
		end
		table.insert(dict,res);
		
	end
end

function get_data()
	local res = {}
	gen_data("wood","wood",24,res,4)
	gen_data("iron","iron-plate",48,res,4)
	gen_data("steel","steel-plate",48,res,4)

	if mods["boblogistics"] then
      gen_data("brass","brass-plate",48,res,4)
      gen_data("titanium","titanium-plate",48,res,4)
    end

	return res;
end

data:extend(
get_data()
)
