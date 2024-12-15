-- NOTE : some things like syn.protect or something will see
--- functions with lua (this functions not tested probably is not working or not)
--- checkcaller
function = checkcaller()
  return true
end
--- caches
local cache = {}

function = cache.invalidate()
  cache = {}
end

function = cache.iscached(key)
  return cache[key] ~= nil
end

function = cache.get(key)
  return cache[key]
end

function = cache.set(key, value)
  cache[key] = value
end

function = cache.replace(key, value)
  if cache.iscached(key) then
    cache[key] = value
  end
end
--- compareinstances
function = compareinstances(a, b)
  if a == b then return true end -- Check for object identity

  if not (a:IsA("Instance") and b:IsA("Instance")) then return false end -- Check if both are Instances

  if a.ClassName ~= b.ClassName then return false end -- Check if class names match

  -- Compare properties
  for k, v in pairs(a) do
    local otherV = b[k]
    if type(v) ~= type(otherV) then return false end -- Check if property types match
    if type(v) == "table" and not compareInstances(v, otherV) then return false end -- Recursively compare nested tables
    if v ~= otherV then 
      -- Handle special cases for certain properties
      if k == "CFrame" then 
        if not v:equals(otherV) then return false end 
      elseif k == "Color3" then
        if not v:isClose(otherV) then return false end
      else
        return false 
      end
    end
  end

  -- Compare children
  local numChildren = #a:GetChildren()
  if numChildren ~= #b:GetChildren() then return false end -- Check for equal number of children

  -- Sort children for consistent comparison
  local sortedA = table.clone(a:GetChildren())
  table.sort(sortedA, function(a, b) return a.Name < b.Name end)
  local sortedB = table.clone(b:GetChildren())
  table.sort(sortedB, function(a, b) return a.Name < b.Name end)

  for i = 1, numChildren do
    if not compareInstances(sortedA[i], sortedB[i]) then return false end -- Recursively compare sorted children
  end

  return true -- All comparisons passed
end

--- iscclosure (soon)

--- clonefunction (soon)

--- cloneref (soon)

---- Frist debugs
function = debug.getstack(level)
  if level == nil then level = 1 end

  local stack = {}
  local i = 1

  while true do
    local info = debug.getinfo(level + i, "Slfn") 
    if not info then 
      break 
    end

    table.insert(stack, {
      source = info.source or "",
      linedefined = info.linedefined or 0,
      name = info.name or "",
      namewhat = info.namewhat or "" 
    })

    i = i + 1
  end

  return stack
end


function debug.getinfo(level, what)
  if level == nil then level = 1 end

  local info = {}

  if what then
    if string.find(what, "S") then
      local source = debug.getinfo(level, "S").source
      if source then info.source = source end
    end

    if string.find(what, "n") then
      local name = debug.getinfo(level, "n").name
      if name then info.name = name end
    end

    if string.find(what, "l") then
      local linedefined = debug.getinfo(level, "l").linedefined
      if linedefined then info.linedefined = linedefined end
    end

    -- Add more fields as needed (e.g., "f", "u", "t", "r", "k", "C")
  end

  return info
end
-- im still learn what is lua or luau
--- only some functions will show
------ now readfiles and delfiles etc.
function = listfiles(directory)
  local files = {}
  local dir = io.open(directory)

  if not dir then
    return nil, "Failed to open directory: " .. directory 
  end

  for file in dir:lines() do
    table.insert(files, file)
  end

  dir:close()
  return files
end
--- isfolder
function = isfolder(path)
  local file = io.open(path)
  if file then
    file:close()
    return true
  end
  return false
end
----- delfolder?
function delfolder(path)
  if not isfolder(path) then
    return false
  end

  local success = os.execute("rm -rf " .. path)

  return success == 0
end

function isfolder(path)
  local file = io.open(path)
  if file then
    file:close()
    return true
  end
  return false
end
