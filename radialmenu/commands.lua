local open = false
local ESX  = nil
 
-- ESX
-- Added this so you can include the rest of the Usage-stuff found on the GitHub page
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- Open ID card
RegisterNetEvent('jsfour-idcard:open')
AddEventHandler('jsfour-idcard:open', function( data, type )
    open = true
    SendNUIMessage({
        action = "open",
        array  = data,
        type   = type
    })
end)

RegisterCommand("lihatid", function(source, args, rawCommand)
    -- Wait for next frame just to be safe
    Citizen.Wait(0)

    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
end, false)

-- RegisterCommand("tunjukkanktp", function(source, args, rawCommand)
--     -- Wait for next frame just to be safe
--     Citizen.Wait(0)
--     local player, distance = ESX.Game.GetClosestPlayer()

--     if distance ~= -1 and distance <= 3.0 then
--       TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
--     else
--       ESX.ShowNotification('Tidak Ada Player Di Dekatmu')
--     end
-- end, false)

RegisterCommand("tunjukkanktp", function(source, args, rawCommand)
  -- Wait for next frame just to be safe
  Citizen.Wait(0)
  local player, distance = ESX.Game.GetClosestPlayer()

  if distance ~= -1 and distance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
    playAnim('mp_common', 'givetake1_a', 2500)
    TriggerServerEvent('3dme:shareDisplay', "Memberikan KTP")
  else
    exports['mythic_notify']:SendAlert('error', 'Tidak ada Orang di Sekitarmu')
  end
end, false)

RegisterCommand("lihatsim", function(source, args, rawCommand)
    -- Wait for next frame just to be safe
    Citizen.Wait(0)

    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
end, false)

RegisterCommand("tunjukkankendaraan", function(source, args, rawCommand)
    -- Wait for next frame just to be safe
    Citizen.Wait(0)

    local player, distance = ESX.Game.GetClosestPlayer()

    if distance ~= -1 and distance <= 3.0 then
      TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
      playAnim('mp_common', 'givetake1_a', 2500)
      TriggerServerEvent('3dme:shareDisplay', "Memberikan SIM")
    else
      exports['mythic_notify']:SendAlert('error', 'Tidak ada Orang di Sekitarmu')
    end
  end, false)

RegisterCommand("lihatlisensi", function(source, args, rawCommand)
  -- Wait for next frame just to be safe
  Citizen.Wait(0)

  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
end, false)

RegisterCommand("tunjukkansenjataku", function(source, args, rawCommand)
  -- Wait for next frame just to be safe
  Citizen.Wait(0)
  local player, distance = ESX.Game.GetClosestPlayer()

  if distance ~= -1 and distance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
    playAnim('mp_common', 'givetake1_a', 2500)
    TriggerServerEvent('3dme:shareDisplay', "Memberikan Lisensi Senjata")
  else
    exports['mythic_notify']:SendAlert('error', 'Tidak ada Orang di Sekitarmu')
  end
end, false)