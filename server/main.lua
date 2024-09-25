RegisterNetEvent('playerService:loadPlayer', function()
    local data = {}
    local src = source
    local ps = playerService:getInstance()
    ps:addPlayer(src)
    Citizen.Wait(25)

    local player = ps:getPlayer(src)
    local id = player.source
    local name = player.name
    local moneyCash = player.moneyCash
    local moneyBank = player.moneyBank
    local moneyBlackCash = player.moneyBlackCash
    local group = player.group

    table.insert(data, {
        id = id,
        name = name,
        moneyCash = moneyCash,
        moneyBank = moneyBank,
        moneyBlackCash = moneyBlackCash,
        group = group
    })

    TriggerClientEvent('playerService:getData', src, data)
end)

RegisterNetEvent('playerService:requestData', function()
    local data = {}
    local src = source
    local ps = playerService:getInstance()

    local player = ps:getPlayer(src)
    local id = player.source
    local name = player.name
    local moneyCash = player.moneyCash
    local moneyBank = player.moneyBank
    local moneyBlackCash = player.moneyBlackCash
    local group = player.group

    table.insert(data, {
        id = id,
        name = name,
        moneyCash = moneyCash,
        moneyBank = moneyBank,
        moneyBlackCash = moneyBlackCash,
        group = group
    })

    TriggerClientEvent('playerService:getData', src, data)
end)
