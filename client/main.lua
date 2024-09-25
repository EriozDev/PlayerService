PlayerServiceData = {}

Pulse.NewThread(function()
    repeat Wait(0) until NetworkIsSessionStarted()
    TriggerServerEvent('playerService:loadPlayer')
end)

RegisterNetEvent('playerService:getData', function(data)
    PlayerServiceData = data
end)

Citizen.CreateThread(function()
    while (true) do
        Wait(5000)

        TriggerServerEvent('playerService:requestData')
    end
end)
