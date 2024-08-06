-- client.lua (ÄLÄ POISTA)

-- Blibin luomiseksi (ÄLÄ POISTA)
function createBlip(coords, name, sprite, scale, color)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipScale(blip, scale)
    SetBlipColour(blip, color)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)

    return blip
end

-- tässä blibbien asetukset ja säädä näitä coords ja nimi  (ÄLÄ POISTA)
-- Sprite = blibs logo
-- Scale = Blibin koko
-- Color = Väri
Citizen.CreateThread(function()
    -- Laita cordinaatteihin haluamasi sijainti jotta saat haluamasi paikkaan 
    local blipData = {
        { coords = vector3(-1037.39, -2737.24, 20.17), name = "Kauppa", sprite = 52, scale = 1.0, color = 2 },  -- blib 1
        { coords = vector3(-45.87, -1097.92, 26.42), name = "Poliisi", sprite = 60, scale = 1.0, color = 29 },  -- blib 2
        { coords = vector3(258.34, -217.11, 53.58), name = "Lääkärin vastaanotto", sprite = 51, scale = 1.0, color = 1 },  -- blib 3
        { coords = vector3(1842.56, 3684.78, 34.28), name = "Ravintola", sprite = 93, scale = 1.0, color = 4 }  --blib 4
    }

    -- Luodaan blipit (ÄLÄ POISTA)
    for _, data in ipairs(blipData) do
        createBlip(data.coords, data.name, data.sprite, data.scale, data.color)
    end
end)
