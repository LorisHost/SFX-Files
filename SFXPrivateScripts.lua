-- Hiding Function getgc
hookfunction(getgc, function(...) return checkcaller() and getgc(...) or {} end)