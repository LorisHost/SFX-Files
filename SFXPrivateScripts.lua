local List = {
    -- Hiding Function getgc
    getgc = function() return hookfunction(getgc, function(...) return checkcaller() and getgc(...) or {} end) end,

    -- Hiding Function FireServer()
    FireServer = function() return hookfunction(game.ReplicatedStorage.RemoteEvent.FireServer, function(...)
        return checkcaller() and game.ReplicatedStorage.RemoteEvent.FireServer(...) or nil
    end) end
}

for _, bypass in pairs(List) do
    bypass()
end