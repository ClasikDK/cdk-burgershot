Config = {
    Locale = "da",

    Blip = {
        Coords = vector3(-1191.402222, -891.824158, 13.879150),
        Sprite = 106,
        Color = 17,
        Label = "Burgershot",
        Scale = 0.8
    },

    ShopItems = {
        { name = "burger_buns",                 price = 10 },
        { name = "burger_beef_patty_frozen",    price = 10 },
        { name = "burger_chicken_patty_frozen", price = 10 },
        { name = "salad",                       price = 10 },
        { name = "tomato",                      price = 10 },
        { name = "fries_frozen",                price = 10 },
        { name = "nuggets_frozen",              price = 10 },
        { name = "cheese_slice",                price = 10 },
        { name = "empty_cup",                   price = 10 },
        { name = "empty_fries",                 price = 10 }
    },

    ShopTarget = {
        coords = vector3(47.07, -1750.07, 29.58),
        size = vector3(4.0, 0.6, 5.0),
        rotation = 50,
        debug = false,
        options = {
            label = "Indkøb af ingredienser",
            name = "burgershot:shop",
            icon = "fas fa-box",
            distance = 1.5,
            groups = {
                ["burgershot"] = 0
            },
            event = "burgershot:client:openShop",
        },
    },

    Stashes = {
        ["burgershotMainStash"] = {
            id = "burgershotMainStash",
            label = "Burgershot Stash",
            slots = 50,
            maxWeight = 10000000,
            target = {
                coords = vector3(-1196.42, -900.94, 13.89),
                size = vector3(0.7, 3.0, 2.4),
                rotation = 74,
                debug = false,
                options = {
                    label = "Stash",
                    name = "burgershotMainStash",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },

        ["burgershotBigStash"] = {
            id = "burgershotBigStash",
            label = "Burgershot Big Stash",
            slots = 50,
            maxWeight = 100000,
            target = {
                coords = vector3(-1203.43, -897.1, 14.1),
                size = vector3(1.2, 3.25, 2.8),
                rotation = 34,
                debug = false,
                options = {
                    label = "Big Stash",
                    name = "burgershotBigStash",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },

        ["burgershotKitchen"] = {
            id = "burgershotKitchen",
            label = "Burgershot Kitchen",
            slots = 20,
            maxWeight = 100000,
            target = {
                coords = vector3(-1195.13, -896.39, 13.89),
                size = vector3(0.6, 3.2, 3.0),
                rotation = 75,
                debug = false,
                options = {
                    label = "Kitchen",
                    name = "burgershotKitchen",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },

        ["burgershotCounter1"] = {
            id = "burgershotCounter1",
            label = "Burgershot Counter 1",
            slots = 5,
            maxWeight = 10000,
            target = {
                coords = vector3(-1196.84, -892.76, 14.1),
                size = vector3(0.6, 0.6, 0.5),
                rotation = 75,
                debug = false,
                options = {
                    label = "Counter 1",
                    name = "burgershotCounter1",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },
        ["burgershotCounter2"] = {
            id = "burgershotCounter2",
            label = "Burgershot Counter 2",
            slots = 5,
            maxWeight = 10000,
            target = {
                coords = vector3(-1194.63, -893.37, 14.1),
                size = vector3(0.6, 1.0, 0.5),
                rotation = 75,
                debug = false,
                options = {
                    label = "Counter 2",
                    name = "burgershotCounter2",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },
        ["burgershotCounter3"] = {
            id = "burgershotCounter3",
            label = "Burgershot Counter 3",
            slots = 5,
            maxWeight = 10000,
            target = {
                coords = vector3(-1192.83, -893.86, 14.1),
                size = vector3(0.6, 0.65, 0.5),
                rotation = 75,
                debug = false,
                options = {
                    label = "Counter 3",
                    name = "burgershotCounter3",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },
        ["burgershotCounter4"] = {
            id = "burgershotCounter4",
            label = "Burgershot Counter 4",
            slots = 5,
            maxWeight = 10000,
            target = {
                coords = vector3(-1190.88, -894.35, 14.1),
                size = vector3(0.45, 0.65, 0.5),
                rotation = 75,
                debug = false,
                options = {
                    label = "Counter 4",
                    name = "burgershotCounter4",
                    icon = "fas fa-box",
                    distance = 1.5,
                    groups = {
                        ["burgershot"] = 0
                    },
                    event = "burgershot:client:openStash",
                },
            }
        },
    },

    Crafting = {
        ["chopping_board"] = {
            ["tomato"] = {
                time = 5000, -- Time it takes to craft in ms
                ["remove"] = {
                    {
                        name = "Tomato",
                        item = "tomato",
                        count = 1
                    }
                },
                reward = {
                    name = "Tomato Slice",
                    item = "tomato_slice",
                    count = 5
                }
            },
            ["salad"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Salad",
                        item = "salad",
                        count = 1
                    }
                },
                reward = {
                    name = "Salad Slice",
                    item = "salad_slice",
                    count = 5
                }
            },
            ["beef_paddy"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Frozen Beef Patty",
                        item = "burger_beef_patty_frozen",
                        count = 1
                    },
                },
                reward = {
                    name = "Cooked Beef Patty",
                    item = "burger_beef_patty",
                    count = 1
                }
            },
        },
        ["fryer"] = {
            ["fries"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Frozen Fries",
                        item = "fries_frozen",
                        count = 1
                    }
                },
                reward = {
                    name = "Cooked Fries",
                    item = "fries_cooked",
                    count = 1
                }
            },
            ["pack_fries"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Empty Fries Pack",
                        item = "empty_fries",
                        count = 1
                    },
                    {
                        name = "Cooked Fries",
                        item = "fries_cooked",
                        count = 1
                    },
                },
                reward = {
                    name = "Fries",
                    item = "fries",
                    count = 1
                }
            },
            ["nuggets"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Frozen Nuggets",
                        item = "nuggets_frozen",
                        count = 1
                    }
                },
                reward = {
                    name = "Cooked Nuggets",
                    item = "nuggets_cooked",
                    count = 5
                }
            },
            ["chicken_paddy"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Frozen Chicken Patty",
                        item = "burger_chicken_patty_frozen",
                        count = 1
                    },
                },
                reward = {
                    name = "Cooked Chicken Paddy",
                    item = "burger_chicken_patty",
                    count = 1
                }
            },
        },
        ["soda_machine"] = {
            ["cola"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Empty Cup",
                        item = "empty_cup",
                        count = 1
                    }
                },
                reward = {
                    name = "Burgershot Cola",
                    item = "burgershotcola",
                    count = 1
                }
            },
        },
        ["burgers"] = {
            ["beef_burger"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Burger Buns",
                        item = "burger_buns",
                        count = 1
                    },
                    {
                        name = "Cooked Beef Patty",
                        item = "burger_beef_patty",
                        count = 1
                    },
                    {
                        name = "Tomato Slice",
                        item = "tomato_slice",
                        count = 1
                    },
                    {
                        name = "Salad Slice",
                        item = "salad_slice",
                        count = 1
                    },
                    {
                        name = "Cheese Slice",
                        item = "cheese_slice",
                        count = 1
                    }
                },
                reward = {
                    name = "Burgershot Burger",
                    item = "burgershotburger",
                    count = 1
                }
            },
            ["chicken_burger"] = {
                time = 5000,
                ["remove"] = {
                    {
                        name = "Burger Buns",
                        item = "burger_buns",
                        count = 1
                    },
                    {
                        name = "Cooked Chicken Patty",
                        item = "burger_chicken_patty",
                        count = 1
                    },
                    {
                        name = "Tomato Slice",
                        item = "tomato_slice",
                        count = 1
                    },
                    {
                        name = "Salad Slice",
                        item = "salad_slice",
                        count = 1
                    },
                    {
                        name = "Cheese Slice",
                        item = "cheese_slice",
                        count = 1
                    }
                },
                reward = {
                    name = "Burgershot Chicken Burger",
                    item = "burgershotchickenburger",
                    count = 1
                }
            }
        }
    },

    CraftingSpots = {
        ["chopping_board"] = {
            coords = vector3(-1195.41, -897.46, 13.69),
            size = vector3(1.0, 5.2, 0.5),
            rotation = 75,
            debug = false,
            options = {
                label = "Chopping Board",
                name = "chopping_board",
                icon = "fas fa-box",
                distance = 1.5,
                groups = {
                    ["burgershot"] = 0
                },
                event = "burgershot:client:chopping_board"
            }
        },
        ["fryer"] = {
            coords = vector3(-1196.13, -900.09, 13.8),
            size = vector3(1.0, 2.6, 0.5),
            rotation = 75,
            debug = false,
            options = {
                label = "Fryer",
                name = "fryer",
                icon = "fas fa-box",
                distance = 1.5,
                groups = {
                    ["burgershot"] = 0
                },
                event = "burgershot:client:fryer"
            }
        },
        ["soda"] = {
            coords = vector3(-1190.87, -898.97, 13.89),
            size = vector3(1.3, 2.7, 2.5),
            rotation = 125,
            debug = false,
            options = {
                label = "Soda Machine",
                name = "soda",
                icon = "fas fa-box",
                distance = 1.5,
                groups = {
                    ["burgershot"] = 0
                },
                event = "burgershot:client:soda_machine"
            }
        }
    }
}
