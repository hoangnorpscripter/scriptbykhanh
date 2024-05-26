local map = game:GetService("Workspace"):FindFirstChild("Map")

if map then
    local mysticIsland = map:FindFirstChild("MysticIsland")

    if mysticIsland then
        local plr = game.Players.LocalPlayer
        local OSTime = os.time()
        local Time = os.date('!*t', OSTime)
        local Content = '**' .. 'Notification Mirage -made by: CAT┇Quý' ..
                            '**'
        local Embed = {
            ["title"] = "__Notification Mirage__",
            ["description"] = "__Script Join__" .. '```' ..
                'game:GetService("TeleportService"):TeleportToPlaceInstance(' ..
                game.PlaceId .. "," .. ' "' .. game.JobId .. '" ' .. "," ..
                'game:GetService("Players").LocalPlayer)' .. '```',
            ["type"] = "rich",
            ["color"] = tonumber(0xffff00),
            ["thumbnail"] = {
                ["url"] = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn7Pacddv12GvGh1vB-J6ZWxsyct1HZ5a5vbjqQtcTZdyQ4ypzpUp4jUzr0ouXRIHGpTs&usqp=CAU"
            },
            ["image"] = {
                ["url"] = "https://genshingo.com/cdn/shop/articles/genshin-hutao-1.jpg?v=1676341477"
            },
            ["fields"] = {
                {
                    ["name"] = "__Place ID:__",
                    ["value"] = game.PlaceId,
                    ["inline"] = true
                },
                {
                    ["name"] = "__Job Id :__",
                    ["value"] = '```' .. game.JobId .. '```',
                    ["inline"] = true
                },
                ["footer"] = {
                    ["text"] = "Owner: !Cat Quy x Khanh",
                    ["icon_url"] = "https://hoangnorpscripter.github.io/myclassis7c/7C/th.jpg"
                }
            },
            ["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year,
                                          Time.month, Time.day, Time.hour,
                                          Time.min, Time.sec)
        };

        (syn and syn.request or http_request or http.request) {
            Url = 'https://discord.com/api/webhooks/1244287580099317886/H_DDZ6qe198yLXbjOfroN5_mLL7uJg9lOS1xyYxHoWmf02eTe7uFB35Z3M-5tUJwbE1Y',
            Method = 'POST',
            Headers = {['Content-Type'] = 'application/json'},
            Body = game:GetService 'HttpService':JSONEncode({
                content = Content,
                embeds = {Embed}
            })
        };
        print("found")
    else
        print("notfound")
    end
else
    print("Map không tồn tại trong Workspace.")
end
