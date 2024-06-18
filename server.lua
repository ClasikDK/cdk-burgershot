for k, v in pairs(Config.Stashes) do
    exports.ox_inventory:RegisterStash(v.id, v.label, v.slots, v.maxWeight, nil, v.groups, nil)
end

exports.ox_inventory:RegisterShop("burgershotShop", {
    name = "Burgershot Shop",
    groups = {
      ["burgershot"] = 0
    },
    inventory = Config.ShopItems
})

ESX.RegisterServerCallback("burgershot:server:checkInv", function (source, cb, items)
    local xPlayer = ESX.GetPlayerFromId(source)
    if items.data["remove"] ~= nil then
        for k, v in pairs(items.data["remove"]) do
            local item = xPlayer.getInventoryItem(v.item)
            if v.count * items.makingAmount > item.count then
                cb(false)
                return
            end
        end

        local canSwap = true
        for _, v in pairs(items.data["remove"]) do
            print(items.data.reward.item .. " " .. items.data.reward.count * items.makingAmount, v.item .. " " .. v.count * items.makingAmount)
            if not xPlayer.canSwapItem(v.item, v.count * items.makingAmount, items.data.reward.item, items.data.reward.count * items.makingAmount) then
                canSwap = false
                break
            end
        end
        cb(canSwap)
    else
        cb(true)
    end
end)

ESX.RegisterServerCallback("burgershot:server:reward", function(source, cb, items)
    local xPlayer = ESX.GetPlayerFromId(source)

    if items.data["remove"] ~= nil then
        local canSwap = true
        for _, v in pairs(items.data["remove"]) do
            print(items.data.reward.item .. " " .. items.data.reward.count * items.makingAmount, v.item .. " " .. v.count * items.makingAmount)
            if not xPlayer.canSwapItem(v.item, v.count * items.makingAmount, items.data.reward.item, items.data.reward.count * items.makingAmount) then
                canSwap = false
                break
            end
        end
        if not canSwap then
            cb(false)
            return
        end
        for k, v in pairs(items.data["remove"]) do
            xPlayer.removeInventoryItem(v.item, v.count * items.makingAmount)
        end
    end
    xPlayer.addInventoryItem(items.data.reward.item, items.data.reward.count * items.makingAmount)
    cb(true)
end)