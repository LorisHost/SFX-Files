local function hook(func, fallback)
    return hookfunction(func, function(...)
        warn(func .. " called!")
        return checkcaller() and func(...) or fallback
    end)
end

_G = hook(_G, {})
getgc = hook(getgc, {})
debug.getinfo = hook(debug.getinfo, nil)
debug.getupvalues = hook(debug.getupvalues, {})
debug.getconstants = hook(debug.getconstants, {})
debug.traceback = hook(debug.traceback, "")
debug.setupvalue = hook(debug.setupvalue, nil)
getreg = hook(getreg, {})
getfenv = hook(getfenv, {})
setfenv = hook(setfenv, nil)
pairs = hook(pairs, {})
--- Hiden Funcs
_G = hookfunction(_G, function()
    warn("_G accessed!")
    return checkcaller() and _G or {}
end)

getgc = hookfunction(getgc, function(...) 
    warn("getgc called!") 
    return checkcaller() and getgc(...) or {} 
end)

debug.getinfo = hookfunction(debug.getinfo, function(func, ...)
    warn("debug.getinfo called!") 
    return checkcaller() and debug.getinfo(func, ...) or nil
end)

debug.getupvalues = hookfunction(debug.getupvalues, function(func)
    warn("debug.getupvalues called!") 
    return checkcaller() and debug.getupvalues(func) or {}
end)

debug.getconstants = hookfunction(debug.getconstants, function(func)
    warn("debug.getconstants called!") 
    return checkcaller() and debug.getconstants(func) or {}
end)

debug.traceback = hookfunction(debug.traceback, function(...)
    warn("debug.traceback called!") 
    return checkcaller() and debug.traceback(...) or ""
end)

debug.setupvalue = hookfunction(debug.setupvalue, function(func, index, value)
    warn("debug.setupvalue called!") 
    return checkcaller() and debug.setupvalue(func, index, value) or nil
end)

getreg = hookfunction(getreg, function(...)
    warn("getreg called!") 
    return checkcaller() and getreg(...) or {}
end)

getfenv = hookfunction(getfenv, function(func)
    warn("getfenv called!") 
    return checkcaller() and getfenv(func) or {}
end)

setfenv = hookfunction(setfenv, function(func, env)
    warn("setfenv called!") 
    return checkcaller() and setfenv(func, env) or nil
end)

pairs = hookfunction(pairs, function(table)
    warn("pairs called!") 
    return checkcaller() and pairs(table) or {}
end)