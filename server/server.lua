
local sharedItems = exports['qbr-core']:GetItems()

-- Register usable Campfire
exports['qbr-core']:CreateUseableItem("campfire", function(data)
    --VorpInv.subItem(data.source, "campfire", 1)
    TriggerClientEvent("dag_crafting:campfire", data.source)
end)

RegisterServerEvent('dag_crafting:server:findjob')
AddEventHandler( 'dag_crafting:server:findjob', function ()
    local _source = source
    local Character = exports['qbr-core']:GetPlayer(_source)
    local job = Character.PlayerData.job
    TriggerClientEvent("dag_crafting:sendjob",_source,job)
end)

RegisterServerEvent('dag_crafting:server:openInv')
AddEventHandler( 'dag_crafting:server:openInv', function ()
    local _source = source
    --VorpInv.OpenInv(_source)
end)

RegisterServerEvent('dag_crafting:server:craftingalg')
AddEventHandler( 'dag_crafting:server:craftingalg', function (crafting, countz)
    local _source = source
    local Character = exports['qbr-core']:GetPlayer(_source)
    
    local playerjob = Character.PlayerData.job
    local job = crafting['Job']
    
    local craft = false
    
    -- No job restriction
    if job == 0 then 
        craft = true
    end

    if job ~=0 then
        for k,v in pairs(job) do  
            if v == playerjob then 
                craft = true 
            end
        end
    end


    if craft then 
        -- Check that the user has all crafting items available
        local reward = crafting['Reward']

        local craftcheck = true
        for index, item in pairs(crafting.Items) do              
			local pcount = Character.Functions.GetItemByName(item.name).amount
            local icount = item.count * countz

            if pcount < icount then
                craftcheck = false
                break
            end
        end

        if craftcheck == true then
            TriggerClientEvent("dag_crafting:client:crafting", source, reward)
            
            -- Loop through and remove each item
            for index, item in pairs(crafting.Items) do  
                --VorpInv.subItem(source, item.name, item.count * countz)
				Character.Functions.RemoveItem(item.name, item.count * countz)
            end
            
            -- -- Give crafted item(s) to player
            -- for k,v in pairs(reward) do
                -- local countx = v.count * countz               
				-- Character.Functions.AddItem(v.name, countx)
				-- TriggerClientEvent('inventory:client:ItemBox', source, sharedItems[v.name], "add")
            -- end
			-- TriggerClientEvent('rsg_notify:client:notifiy', source, "You finished crafting", 3000)
        else
            TriggerClientEvent('rsg_notify:client:notifiy', source, _U('NotEnough'), 3000)
        end
    else
        TriggerClientEvent('rsg_notify:client:notifiy', source, _U('NotJob')..job, 3000)
    end

end)

RegisterServerEvent('dag_crafting:server:finishCrafting')
AddEventHandler('dag_crafting:server:finishCrafting', function(reward)
	local Character = exports['qbr-core']:GetPlayer(source)
	local countz = 1
	for k,v in pairs(reward) do
		local countx = v.count * countz               
		Character.Functions.AddItem(v.name, countx)
		TriggerClientEvent('inventory:client:ItemBox', source, sharedItems[v.name], "add")
    end
end)


