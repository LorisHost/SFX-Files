local List = {
    -- Hiding Function getgc
    getgc = hookfunction(getgc, function(...) return checkcaller() and getgc(...) or {} end),

    -- Hiding Function FireServer()
    FireServer = hookfunction(game.ReplicatedStorage.RemoteEvent.FireServer, function(...)
        return checkcaller() and game.ReplicatedStorage.RemoteEvent.FireServer(...) or nil
    end)
}

-- Execute all hooks using pairs (no bypass())
for _, _ in pairs(List) do
    -- All hooks are executed when the list is defined
end