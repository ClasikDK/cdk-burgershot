Lang = Locales[Config.Locale]

for k, v in pairs(Config.Stashes) do
    exports.ox_target:addBoxZone(v.target)
end

for k, v in pairs(Config.CraftingSpots) do
    exports.ox_target:addBoxZone(v)
end

RegisterNetEvent('burgershot:client:openStash')
AddEventHandler('burgershot:client:openStash', function(data)
    exports.ox_inventory:openInventory("stash", { id = Config.Stashes[data.name].id })
end)

RegisterNetEvent('burgershot:client:openShop')
AddEventHandler('burgershot:client:openShop', function()
    exports.ox_inventory:openInventory("shop", { type = "burgershotShop" })
end)

exports.ox_target:addBoxZone(Config.ShopTarget)

RegisterNetEvent("burgershot:client:choseAmount")
AddEventHandler("burgershot:client:choseAmount", function(data)
    local inputAmount = lib.inputDialog("Chose Amount", {
        { type = "number", label = Lang["label_amount"], description = Lang["desc_amount"]:format(data.time / 1000), default = 1, required = true }
    })

    if inputAmount then
        local alertAmount = lib.alertDialog({
            header = Lang["header_amount"]:format(inputAmount[1]),
            content = Lang["content_amount"]:format(inputAmount[1] * 5),
            centered = true,
            cancel = true,
        })

        local args = {
            data = data,
            makingAmount = inputAmount[1]
        }

        if alertAmount then
            TriggerEvent("burgershot:client:craftItem", args)
        end
    end
end)

RegisterNetEvent("burgershot:client:craftItem")
AddEventHandler("burgershot:client:craftItem", function(items)
    ESX.TriggerServerCallback("burgershot:server:checkInv", function(cb)
        if cb then
            if lib.progressCircle({
                    duration = items.data.time * items.makingAmount,
                    label = Lang["label_making"]:format(items.data.reward.count * items.makingAmount, items.data.reward.name),
                    useWhileDead = false,
                    allowSwimming = false,
                    allowCuffed = false,
                    canCancel = true,
                    anim = {
                        dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                        clip = "machinic_loop_mechandplayer",
                    },
                    disable = {
                        move = true,
                        car = true,
                        combat = true,
                        mouse = false,
                        sprint = true,
                    }
                })
            then
                ESX.TriggerServerCallback("burgershot:server:reward", function(cb)
                    if cb then
                        lib.notify({
                            type = "success",
                            description = Lang["success"]:format(items.data.reward.count * items.makingAmount,
                                items.data.reward.name)
                        })
                    end
                end, items)
            else
                lib.notify({
                    type = "error",
                    description = Lang["cancel"]
                })
            end
        else
            lib.notify({
                type = "error",
                description = Lang["not_enough_items"]
            })
        end
    end, items)
end)


CreateThread(function()
    local blip = AddBlipForCoord(Config.Blip.Coords)

    SetBlipSprite(blip, Config.Blip.Sprite)
    SetBlipScale(blip, Config.Blip.Scale)
    SetBlipColour(blip, Config.Blip.Color)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Blip.Label)
    EndTextCommandSetBlipName(blip)
end)




RegisterCommand("burgershot", function()
    TriggerEvent("burgershot:client:openShop")
end)
