local function hook(func, fallback)
    local hookedFunction = hookfunction(func, function(...)
        if checkcaller() then
            return func(...)
        end
        warn(debug.info(2, "n") .. " called " .. tostring(func))
        return fallback
    end)
    
    setmetatable(hookedFunction, {
        __tostring = function() return tostring(func) end
    })
    
    return hookedFunction
end

debug.getinfo = hook(debug.getinfo, function() return {what = "C"} end)
debug.getupvalues = hook(debug.getupvalues, function() return {} end)
debug.getconstants = hook(debug.getconstants, function() return {} end)
debug.traceback = hook(debug.traceback, "")
debug.setupvalue = hook(debug.setupvalue, nil)

getreg = hook(getreg, {})
getgc = hook(getgc, {})
getfenv = hook(getfenv, {})
setfenv = hook(setfenv, nil)

pairs = hook(pairs, {})

hookfunction(hookfunction, function() return nil end)

local oldG = _G
_G = setmetatable({}, {
    __index = function(_, k)
        warn("_G access: " .. tostring(k))
        return oldG[k]
    end,
    __newindex = function(_, k, v)
        warn("_G modified: " .. tostring(k))
        oldG[k] = v
    end
})

local function hideFunction(func)
    return setmetatable({}, {
        __call = function(_, ...) return func(...) end,
        __tostring = function() return "function: 0x" .. string.sub(tostring(func), 11) end
    })
end

debug.getinfo = hideFunction(debug.getinfo)
debug.getupvalues = hideFunction(debug.getupvalues)
debug.getconstants = hideFunction(debug.getconstants)
debug.traceback = hideFunction(debug.traceback)
debug.setupvalue = hideFunction(debug.setupvalue)
getreg = hideFunction(getreg)
getgc = hideFunction(getgc)
getfenv = hideFunction(getfenv)
setfenv = hideFunction(setfenv)
pairs = hideFunction(pairs)