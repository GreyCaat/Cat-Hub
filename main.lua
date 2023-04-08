local function SendNotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = title,
        Text = text,
        Button1 = "Ok",
        Duration = 1.8e+308
    })
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

if syn then
    local url

    if game.PlaceId == 7230977870 or game.PlaceId == 6647962258 then
        if game.PlaceId == 6647962258 then
            SendNotification("Info", "Join a Server")
        else
            url = syn.request({Url = "https://raw.githubusercontent.com/GreyCaat/Cat-Hub/main/Games/Aeronautica.lua"}).Body
        end
    else
        SendNotification("Info", "Game is not supported")
    end

    if url then
        loadstring(url)()
    end
else
    SendNotification("Error", "Cat Hub only supports Synapse X")
end
