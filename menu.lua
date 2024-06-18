-- Chopping Board

local choppingOptions = {}

for k, v in pairs(Config.Crafting["chopping_board"]) do
    local metadata = {}

    for craft, craftValue in ipairs(v["remove"]) do
        table.insert(metadata, { label = "- " .. craftValue.name, value = craftValue.count })
    end

    table.insert(choppingOptions, {
        title = v.reward.name,
        icon = "nui://ox_inventory/web/images/" .. v.reward.item .. ".png",
        args = v,
        metadata = metadata,
        event = "burgershot:client:choseAmount",
    })
end

table.insert(choppingOptions, {
    title = "Burger Menu",
    icon = "nui://ox_inventory/web/images/burger.png",
    menu = "burger_menu",
})

lib.registerContext({
    id = "chopping_board",
    title = "Chopping Board",
    options = choppingOptions
})

-- Burgers

local burgerOptions = {}

for k, v in pairs(Config.Crafting["burgers"]) do
    local metadata = {}

    for craft, craftValue in ipairs(v["remove"]) do
        table.insert(metadata, { label = "- " .. craftValue.name, value = craftValue.count })
    end

    table.insert(burgerOptions, {
        title = v.reward.name,
        icon = "nui://ox_inventory/web/images/" .. v.reward.item .. ".png",
        args = v,
        metadata = metadata,
        event = "burgershot:client:choseAmount",
    })
end

lib.registerContext({
    id = "burger_menu",
    title = "Burger Menu",
    menu = "chopping_board",
    options = burgerOptions
})

RegisterNetEvent("burgershot:client:chopping_board")
AddEventHandler("burgershot:client:chopping_board", function()
    lib.showContext("chopping_board")
end)

-- Fryer

local fryerOptions = {}

for k, v in pairs(Config.Crafting["fryer"]) do
    local metadata = {}

    for craft, craftValue in ipairs(v["remove"]) do
        table.insert(metadata, { label = "- " .. craftValue.name, value = craftValue.count })
    end

    table.insert(fryerOptions, {
        title = v.reward.name,
        icon = "nui://ox_inventory/web/images/" .. v.reward.item .. ".png",
        args = v,
        metadata = metadata,
        event = "burgershot:client:choseAmount",
    })
end

lib.registerContext({
    id = "fryer",
    title = "Fryer",
    options = fryerOptions
})

RegisterNetEvent("burgershot:client:fryer")
AddEventHandler("burgershot:client:fryer", function()
  lib.showContext("fryer")
end)

-- Soda Machine

local sodaOptions = {}

for k, v in pairs(Config.Crafting["soda_machine"]) do
    local metadata = {}

    for craft, craftValue in ipairs(v["remove"]) do
        table.insert(metadata, { label = "- " .. craftValue.name, value = craftValue.count })
    end

    table.insert(sodaOptions, {
        title = v.reward.name,
        icon = "nui://ox_inventory/web/images/" .. v.reward.item .. ".png",
        args = v,
        metadata = metadata,
        event = "burgershot:client:choseAmount",
    })
end

lib.registerContext({
    id = "soda_machine",
    title = "Soda Machine",
    options = sodaOptions
})

RegisterNetEvent("burgershot:client:soda_machine")
AddEventHandler("burgershot:client:soda_machine", function()
    lib.showContext("soda_machine")
end)

-- DEV: All in One

lib.registerContext({
    id = "allinone",
    title = "All in One",
    options = {
        {
            title = "Chopping Board",
            menu = "chopping_board"
        },
        {
            title = "Fryer",
            menu = "fryer"
        },
        {
            title = "Soda Machine",
            menu = "soda_machine",
        }
    }
})

RegisterCommand("testMenu")
AddEventHandler("burgershot:client:allinone", function()
    lib.showContext("allinone")
end)

