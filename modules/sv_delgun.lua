local Tunnel = module('vrp', 'lib/Tunnel')
local Proxy = module('vrp', 'lib/Proxy')
vRP = Proxy.getInterface("vRP")

RegisterNetEvent('GDM:delgun')
AddEventHandler('GDM:delgun', function(status)
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.hasPermission({user_id, 'admin.tickets'}) then
        if status then
            GiveWeaponToPed(source, GetHashKey(delguncfg.gun), -1, false, true)
        else
            RemoveWeaponFromPed(source, GetHashKey(delguncfg.gun))
        end
    end
end)