-- Localization structure programmed by nh; lifted from his mod JoyousSpring
local lang = 'en-us'

local localization = {}
local localization_files = {}

for _, file in ipairs(NFS.getDirectoryItems(Cardbox.path .. "localization/"..lang)) do
	if NFS.getInfo(Cardbox.path .. "localization/"..lang.."/"..file).type ~= "directory" then
		localization_files[#localization_files + 1] = assert(SMODS.load_file("localization/"..lang.."/"..file, "cardbox"))()
	end
end

for _, file in ipairs(localization_files) do
	for _, loc_type in ipairs({ "descriptions", "misc" }) do
		if file[loc_type] then
			if not localization[loc_type] then localization[loc_type] = {} end
			for desc_key, desc_type_table in pairs(file[loc_type]) do
				if not localization[loc_type][desc_key] then localization[loc_type][desc_key] = {} end
				for obj_key, obj_desc in pairs(desc_type_table) do
					localization[loc_type][desc_key][obj_key] = obj_desc
				end
			end
		end
	end
end

return localization