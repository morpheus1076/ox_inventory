if not lib then return end

local Items = require 'modules.items.shared' --[[@as table<string, OxClientItem>]]

local function sendDisplayMetadata(data)
    SendNUIMessage({
		action = 'displayMetadata',
		data = data
	})
end

--- use array of single key value pairs to dictate order
---@param metadata string | table<string, string> | table<string, string>[]
---@param value? string
local function displayMetadata(metadata, value)
	local data = {}

	if type(metadata) == 'string' then
        if not value then return end

        data = { { metadata = metadata, value = value } }
	elseif table.type(metadata) == 'array' then
		for i = 1, #metadata do
			for k, v in pairs(metadata[i]) do
				data[i] = {
					metadata = k,
					value = v,
				}
			end
		end
	else
		for k, v in pairs(metadata) do
			data[#data + 1] = {
				metadata = k,
				value = v,
			}
		end
	end

    if client.uiLoaded then
        return sendDisplayMetadata(data)
    end

    CreateThread(function()
        repeat Wait(100) until client.uiLoaded

        sendDisplayMetadata(data)
    end)
end

exports('displayMetadata', displayMetadata)

---@param _ table?
---@param name string?
---@return table?
local function getItem(_, name)
    if not name then return Items end

	if type(name) ~= 'string' then return end

    name = name:lower()

    if name:sub(0, 7) == 'weapon_' then
        name = name:upper()
    end

    return Items[name]
end

setmetatable(Items --[[@as table]], {
	__call = getItem
})

---@cast Items +fun(itemName: string): OxClientItem
---@cast Items +fun(): table<string, OxClientItem>

local function Item(name, cb)
	local item = Items[name]
	if item then
		if not item.client?.export and not item.client?.event then
			item.effect = cb
		end
	end
end

local ox_inventory = exports[shared.resource]
-----------------------------------------------------------------------------------------------
-- Clientside item use functions
-----------------------------------------------------------------------------------------------

Item('bandage', function(data, slot)
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 16)))
			lib.notify({ description = 'Du fühlst Dich schon besser.' })
		end
	end)
end)

Item('medikit', function(data, slot)
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, maxHealth)
			lib.notify({ description = 'Du bist wieder vollständig Gesund.' })
		end
	end)
end)

Item('fixkit', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('vehrepair')
		end
	end)
end)

Item('waschset', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('vehclean')
		end
	end)
end)

Item('kevlar', function(data, slot)
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				AddArmourToPed(cache.ped, 100)
			end
		end)
	end
end)

Item('kevlarm', function(data, slot)
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				AddArmourToPed(cache.ped, 75)
			end
		end)
	end
end)

Item('kevlars', function(data, slot)
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100 )
				AddArmourToPed(cache.ped, 40)
			end
		end)
	end
end)

Item('cigarette', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			ExecuteCommand('e smoke2')
		end
	end)
end)

Item('zigarette', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			ExecuteCommand('e smoke2')
		end
	end)
end)

Item('cigar', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			ExecuteCommand('e cigar2')
		end
	end)
end)

--[[Item('afghan_joint', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			ExecuteCommand('e smokeweed')
		end
	end)
end)]]

Item('bag', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			SetPedComponentVariation(GetPlayerPed(-1), 5, 82, 0, 0)
			Wait(100)
            TriggerEvent("illenium-appearance:client:updateOutfit")
			TriggerServerEvent('mor_base:bag', source)
		end
	end)
end)

Item('bag2', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			SetPedComponentVariation(GetPlayerPed(-1), 5, 41, 0, 0)
			Wait(100)
            TriggerEvent("illenium-appearance:client:updateOutfit")
			TriggerServerEvent('mor_base:bag2', source)
		end
	end)
end)

Item('nobag', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			local playerWeight = exports.ox_inventory:GetPlayerWeight()
			Wait(100)
			if playerWeight <= 30000 then
				SetPedComponentVariation(GetPlayerPed(-1), 5, 0, 0, 0)
				TriggerEvent("illenium-appearance:client:updateOutfit")
				TriggerServerEvent('mor_base:nobag', source)
			else
				lib.notify({
					title = 'Tasche',
					position = 'top-left',
					description = 'Leider kann die Tasche nicht abgelegt werden. zuviel Gewicht.',
					duration = 4000,
					style = {backgroundColor = '#DBAB50', color = '#FF0000', ['.description'] = {color = '#F9F3E7'}},
					icon = 'hand',
					iconColor = '#FF0000'
				})
			end
		end
	end)
end)

Item('nobag2', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			local playerWeight = exports.ox_inventory:GetPlayerWeight()
			Wait(100)
			if playerWeight <= 30000 then
				print(json.encode(playerWeight))
				SetPedComponentVariation(GetPlayerPed(-1), 5, 0, 0, 0)
				TriggerEvent("illenium-appearance:client:updateOutfit")
				TriggerServerEvent('mor_base:nobag2', source)
			else
				lib.notify({
					title = 'Tasche',
					position = 'top-left',
					description = 'Leider kann die Tasche nicht abgelegt werden. zuviel Gewicht.',
					duration = 4000,
					style = {backgroundColor = '#DBAB50', color = '#FF0000', ['.description'] = {color = '#F9F3E7'}},
					icon = 'hand',
					iconColor = '#FF0000'
				})
			end
		end
	end)
end)

Item('kleidertasche', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('illenium-appearance:client:openOutfitMenu')
		end
	end)
end)

Item('shoes', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			local meta = data.metadata
			SetPedComponentVariation(PlayerPedId(), 6, meta.comp, meta.text, 0)
			Notify('~w~Schuhe ~g~angezogen')
			ClearPedTasks(PlayerPedId())
		end
	end)
end)
Item('pants', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			local meta = data.metadata
			SetPedComponentVariation(PlayerPedId(), 4, meta.comp, meta.text, 0)
			Notify('~w~Hose ~g~angezogen')
			ClearPedTasks(PlayerPedId())
		end
	end)
end)
Item('mask', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			local meta = data.metadata
			SetPedComponentVariation(PlayerPedId(), 1, meta.comp, meta.text, 0)
			Notify('~w~Maske ~g~angelegt')
			ClearPedTasks(PlayerPedId())
		end
	end)
end)

client.parachute = false
Item('parachute', function(data, slot)
	if not client.parachute then
		ox_inventory:useItem(data, function(data)
			if data then
				local chute = `GADGET_PARACHUTE`
				SetPlayerParachuteTintIndex(PlayerData.id, -1)
				GiveWeaponToPed(cache.ped, chute, 0, true, false)
				SetPedGadget(cache.ped, chute, true)
				lib.requestModel(1269906701)
				client.parachute = {CreateParachuteBagObject(cache.ped, true, true), slot?.metadata?.type or -1}
				if slot.metadata.type then
					SetPlayerParachuteTintIndex(PlayerData.id, slot.metadata.type)
				end
			end
		end)
	end
end)

Item('phone', function(data, slot)
	local success, result = pcall(function()
		return exports.npwd:isPhoneVisible()
	end)

	if success then
		exports.npwd:setPhoneVisible(not result)
	end
end)

Item('clothing', function(data, slot)
	local metadata = slot.metadata

	if not metadata.drawable then return print('Clothing is missing drawable in metadata') end
	if not metadata.texture then return print('Clothing is missing texture in metadata') end

	if metadata.prop then
		if not SetPedPreloadPropData(cache.ped, metadata.prop, metadata.drawable, metadata.texture) then
			return print('Clothing has invalid prop for this ped')
		end
	elseif metadata.component then
		if not IsPedComponentVariationValid(cache.ped, metadata.component, metadata.drawable, metadata.texture) then
			return print('Clothing has invalid component for this ped')
		end
	else
		return print('Clothing is missing prop/component id in metadata')
	end

	ox_inventory:useItem(data, function(data)
		if data then
			metadata = data.metadata

			if metadata.prop then
				local prop = GetPedPropIndex(cache.ped, metadata.prop)
				local texture = GetPedPropTextureIndex(cache.ped, metadata.prop)

				if metadata.drawable == prop and metadata.texture == texture then
					return ClearPedProp(cache.ped, metadata.prop)
				end

				-- { prop = 0, drawable = 2, texture = 1 } = grey beanie
				SetPedPropIndex(cache.ped, metadata.prop, metadata.drawable, metadata.texture, false);
			elseif metadata.component then
				local drawable = GetPedDrawableVariation(cache.ped, metadata.component)
				local texture = GetPedTextureVariation(cache.ped, metadata.component)

				if metadata.drawable == drawable and metadata.texture == texture then
					return -- item matches (setup defaults so we can strip?)
				end

				-- { component = 4, drawable = 4, texture = 1 } = jeans w/ belt
				SetPedComponentVariation(cache.ped, metadata.component, metadata.drawable, metadata.texture, 0);
			end
		end
	end)
end)

-----------------------------------------------------------------------------------------------

exports('Items', function(item) return getItem(nil, item) end)
exports('ItemList', function(item) return getItem(nil, item) end)

return Items
