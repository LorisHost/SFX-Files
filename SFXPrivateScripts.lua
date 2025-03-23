local List = {
    -- Hiding Function getgc
    getgc = hookfunction(getgc, function(...) return checkcaller() and getgc(...) or {} end),

    -- Hiding Function FireServer()
    FireServer = hookfunction(game.ReplicatedStorage.RemoteEvent.FireServer, function(...)
        return checkcaller() and game.ReplicatedStorage.RemoteEvent.FireServer(...) or nil
    end)
}

-- Execute all hooks (they are set automatically upon defining the List)
for _, hook in pairs(List) do
    -- This will just set the hooks when the table is defined
end