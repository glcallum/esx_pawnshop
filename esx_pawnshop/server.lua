ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

-----Sale
RegisterServerEvent('esx_pawnshop:sellsaffron')
AddEventHandler('esx_pawnshop:sellsaffron', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local saffron = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "saffron" then
			saffron = item.count
		end
	end
    
    if saffron > 0 then
        xPlayer.removeInventoryItem('saffron', 1)
        xPlayer.addMoney(7500)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You Sold A Saffron !')
    end
end)

RegisterServerEvent('esx_pawnshop:sellspeaker')
AddEventHandler('esx_pawnshop:sellspeaker', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local speaker = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "speaker" then
			speaker = item.count
		end
	end
    
    if speaker > 0 then
        xPlayer.removeInventoryItem('speaker', 1)
        xPlayer.addMoney(7500)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a speaker')
    end
end)

RegisterServerEvent('esx_pawnshop:selllaptop')
AddEventHandler('esx_pawnshop:selllaptop', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local laptop = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "laptop" then
			laptop = item.count
		end
	end
    
    if laptop > 0 then
        xPlayer.removeInventoryItem('laptop', 1)
        xPlayer.addMoney(7500)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a laptop !')
    end
end)

RegisterServerEvent('esx_pawnshop:sellbook')
AddEventHandler('esx_pawnshop:sellbook', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local book = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "book" then
			book = item.count
		end
	end
    
    if book > 0 then
        xPlayer.removeInventoryItem('book', 1)
        xPlayer.addMoney(3000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a book !')
    end
end)

RegisterServerEvent('esx_pawnshop:sellcoupon')
AddEventHandler('esx_pawnshop:sellcoupon', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local coupon = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "coupon" then
			coupon = item.count
		end
	end
    
    if coupon > 0 then
        xPlayer.removeInventoryItem('coupon', 1)
        xPlayer.addMoney(5000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a coupon !')
    end
end)

RegisterServerEvent('esx_pawnshop:selltoothpaste')
AddEventHandler('esx_pawnshop:selltoothpaste', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local toothpaste = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "toothpaste" then
			toothpaste = item.count
		end
	end
    
    if toothpaste > 0 then
        xPlayer.removeInventoryItem('toothpaste', 1)
        xPlayer.addMoney(2000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a toothpaste !')
    end
end)

RegisterServerEvent('esx_pawnshop:selllotteryticket')
AddEventHandler('esx_pawnshop:selllotteryticket', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local lotteryticket = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "lotteryticket" then
			lotteryticket = item.count
		end
	end
  
    if lotteryticket > 0 then
        xPlayer.removeInventoryItem('lotteryticket', 1)
        xPlayer.addMoney(15000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a lotteryticket !')
    end
end)

RegisterServerEvent('esx_pawnshop:sellshirt')
AddEventHandler('esx_pawnshop:sellshirt', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local shirt = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "shirt" then
			shirt = item.count
		end
	end
    
    if shirt > 0 then
        xPlayer.removeInventoryItem('shirt', 1)
        xPlayer.addMoney(5000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a shirt')
    end
end)

RegisterServerEvent('esx_pawnshop:sellpants')
AddEventHandler('esx_pawnshop:sellpants', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local pants = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "pants" then
			pants = item.count
		end
	end
    
    if pants > 0 then
        xPlayer.removeInventoryItem('pants', 1)
        xPlayer.addMoney(5000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You sold a pants!')
    end
end)


function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end