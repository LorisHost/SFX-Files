-- Hiding Function getgc
hookfunction(getgc, function(...) return checkcaller() and getgc(...) or {} end)
-- Hiding Function FireServer()
hookfunction(game.ReplicatedStorage.RemoteEvent.FireServer, function(...) return checkcaller() and hookfunction(game.ReplicatedStorage.RemoteEvent.FireServer, ... ) or nil end)
