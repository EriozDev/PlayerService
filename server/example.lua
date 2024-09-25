local ps = playerService:getInstance()

local player = ps:getPlayer(1)
if player then
    print("Nom:", player.name, "Argent:", player.money)
end

ps:setMoney(1, 'cash', 2000)

ps:GetPlayers()

ps:removePlayer(2)
ps:GetPlayers()
