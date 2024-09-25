PlayerService = {}

local instance = nil

function new()
    local self = {
        players = {}
    }

    function self:addPlayer(id)
        if not self.players[id] then
            self.players[id] = {
                source = id,
                name = GetPlayerName(id),
                moneyCash = 0,
                moneyBank = 0,
                moneyBlackCash = 0,
                group = 'user'
            }
        else
            print("Le joueur existe déjà avec cet ID")
        end
    end

    function self:getPlayer(id)
        return self.players[id]
    end

    function self:removePlayer(id)
        self.players[id] = nil
    end

    function self:setMoney(id, type, amount)
        if self.players[id] then
            if type == 'cash' then
                self.players[id].moneyCash = amount
            end

            if type == 'bank' then
                self.players[id].moneyBank = amount
            end

            if type == 'black_cash' then
                self.players[id].moneyBlackCash = amount
            end
        end

        print("Le joueur avec cet ID n'existe pas.")
    end

    function self:getMoney(id, type)
        if self.players[id] then
            if type == 'cash' then
                return self.players[id].moneyCash
            end

            if type == 'bank' then
                return self.players[id].moneyBank
            end

            if type == 'black_cash' then
                return self.players[id].moneyBlackCash
            end
        end

        return nil, "Le joueur avec cet ID n'existe pas."
    end

    function self:getGroup(id)
        if self.players[id] then
            return self.players[id].group
        end

        return nil, 'Le joueur avec cet ID n\'existe pas'
    end

    function self:setGroup(id, newGroup)
        if self.players[id] then
            self.players[id].group = newGroup
        end

        return nil, 'Le joueur avec cet ID n\'existe pas'
    end

    function self:GetPlayers()
        for id, player in pairs(self.players) do
            print(("ID: %s, Nom: %s, Argent: %d"):format(id, player.name, player.money))
        end
    end

    return self
end

function PlayerService:getInstance()
    if instance == nil then
        instance = new()
    end
    return instance
end
