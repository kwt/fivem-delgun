local delgun = false

RegisterCommand("delgun", function()
    delgun = not delgun
    TriggerServerEvent('GDM:delgun', delgun)
end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if delgun then
            if GetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey(delguncfg.gun), 0) then
                if IsPlayerFreeAiming(PlayerId()) then
                    local aiming, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                    if aiming then 
                        DeleteEntity(entity)
                        print("Entity: " ..entity)
                    end 
                end
                DisablePlayerFiring(PlayerId(), true)
            end
        else
            delgun = false
            RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey(delguncfg.gun))
        end
    end
end)