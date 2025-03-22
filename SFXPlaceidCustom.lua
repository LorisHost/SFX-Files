local ePlaces = {
    ["X5PGA=="] = {id = 112233445, script = "https://your-url.com/pressure.lua"},
    ["X9JBE=="] = {id = 987654321, script = "https://your-url.com/evade.lua"},
    ["Y3KHC=="] = {id = 123456789, script = "https://your-url.com/forsaken.lua"}
}

for e, data in pairs(encodedPlaces) do
    if game.PlaceId == data.id then
        print("🔹 Detected:", encoded)
        loadstring(game:HttpGet(data.script))()
        break
    end
end
