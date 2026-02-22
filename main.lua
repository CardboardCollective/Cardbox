Cardbox = SMODS.current_mod

local load = {
    pre = { 'smods', 'talisman' },
}

-- Load code programmed by Dilly; repurposed with a table instead of going through folders and files alphabetically
for ctn, cat in pairs(load) do
    for itn, itm in pairs(cat) do
        local lds, erm = pcall(function() assert(SMODS.load_file("src/"..ctn.."/"..itm..".lua"))() end)
        if not lds then sendErrorMessage("Failed to load "..ctn.." " ..itm.. " - " .. tostring(erm), "Cardbox") end
    end
end