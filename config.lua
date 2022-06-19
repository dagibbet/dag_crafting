Config = {}

Config.defaultlang = "en_lang"

-- Crafting Key
Config.keys = {
    G = 0x760A9C6F
}

-- Options: s, m, l
Config.styles = {
    fontSize = 'm'
}

Config.commands = {
    campfire = true,
    extinguish = true
}

-- distance to interact with Location
Config.interactiondist = 2.5

-- Craftable Locations
Config.locations = {    
	[1] = {
        name = 'Crafting Bench',
        x = -1200.43,
        y = -1937.99,
        z = 43.34
    },
}

Config.PlaceableCampfire = "p_campfire05x"

-- Props the user can use to craft with
--Config.craftingProps = {"P_CAMPFIRECOMBINED01X","p_campfirefresh01x","p_fireplacelogs01x","p_woodstove01x","p_stove04x","p_campfire04x","p_campfire05x","p_campfire02x","p_campfirecombined02x","p_campfirecombined03x","p_kettle03x","p_campfirecombined04x", "P_CAMPFIRECOOK02X","P_CAMPFIRE_WIN2_01X","P_CRAFTINGPOT01X"}
Config.craftingProps = {}
-- How long the progressbar will show when crafting
Config.CraftTime = 15000

-- Craftable item categories. 
Config.categories = {
    -- {
        -- ident = 'food', 
        -- text = 'Craft Food'
    -- },
    {
        ident = 'items',
        text = 'Craft Item'
    },
	{
		ident = 'weapons',
		text = 'Craft Weapons'
	}
}

Config.crafting = {           
    -- {
        -- Text = "PickAxe ", -- name of item to craft on list
        -- SubText = "InvMax = 5",
        -- Desc = "Recipe: 10x Iron, 2x Wood",
        -- Items = {
            -- {
                -- name = "iron",
                -- count = 10
            -- },
            -- {
                -- name = "wood",
                -- count = 2
            -- }
        -- },
        -- Reward = {
            -- {
                -- name = "pickaxe",
                -- count = 1
            -- }
        -- },
        -- Job = 0,
        -- Location = 1, 
        -- Category = "weapons"
    -- },
    -- {
        -- Text = "Axe ", -- name of item to craft on list
        -- SubText = "InvMax = 5",
        -- Desc = "Recipe: 10x Iron, 2x Wood",
        -- Items = {
            -- {
                -- name = "iron",
                -- count = 10
            -- },
            -- {
                -- name = "wood",
                -- count = 2
            -- }
        -- },
        -- Reward ={
            -- {
                -- name = "Axe",
                -- count = 1
            -- }
        -- },
        -- Job = 0,
        -- Location = 1, 
        -- Category = "weapons"
    -- },          
    
    -- {
        -- Text = "Cigar", -- name of item to craft on list
        -- SubText = "InvMax = 20",
        -- Desc = "Recipe: 1x Indian Tobacco, 1x Fiber",
        -- Items = {
            -- {
                -- name = "Indian_Tobbaco",
                -- count = 1
            -- },
            -- {
                -- name = "fibers",
                -- count = 1
            -- }
        -- },
        -- Reward ={
            -- {
                -- name = "cigar",
                -- count = 1
            -- }
        -- },
        -- Job = 0, 
        -- Location = 1, 
        -- Category = "items"
    -- },
    -- {
        -- Text = "Cigarette ", -- name of item to craft on list
        -- SubText = "InvMax = 20",
        -- Desc = "Recipe: 1x Indian Tobacco, 1x Fiber",
        -- Items = {
            -- {
                -- name = "Indian_Tobbaco",
                -- count = 1
            -- },
            -- {
                -- name = "fibers",
                -- count = 1
            -- }
        -- },
        -- Reward ={
            -- {
                -- name = "cigarette",
                -- count = 1
            -- }
        -- },
        -- Job = 0, 
        -- Location = 2,
        -- Category = "items"
    -- }, 
    
	{
        Text = "Dynamite ", -- name of item to craft on list
        SubText = "InvMax = 1",
        Desc = "Recipe: 20x bullets (revolver), 5x Wood, 2x Animal Fat",
        Items = {
            {
                name = "ammo_revolver",
                count = 20
            },
            {
                name = "wood",
                count = 5
            },
			{
                name = "fat",
                count = 2
            }
        },
        Reward ={
            {
                name = "dynamite",
                count = 1
            }
        },
        Job = 0,
        Location = 1, 
        Category = "weapons"
    },
}
