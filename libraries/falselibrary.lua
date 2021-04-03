local falselibrary = {}

function falselibrary:gservice(service)
    setmetatable({}, {
        __index = function()
            return game:GetService(service)
        end
    })
end

function falselibrary:loadstring(string)
    return assert(loadstring(game:HttpGet(string))(), "not supported")
end

function falselibrary:sysmsg(string, color)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
      Text = string,
      Color = color
    })
end

function falselibrary:notif(title, desc, duration, b1t, b2t)
    StarterGui:SetCore("SendNotification", {
      Title = title,
      Text = desc,
      Duration = duration,
      if b1t then
          Button1 = b1t,
      elseif b1t and b2t then
          Button1 = b1t,
          Button2 = "b1t
      end
    })
end

function falselibrary:draw(DrawingObject)
    return Drawing.new(DrawingObject) or drawing.new(DrawingObject)
end

function falselibrary:crashroblox()
    while true do end
end

function falselibrary:reset()
    game.Players.LocalPlayer.Character.Humanoid.Health = -69420
end
function falselibrary:PlayerAdded()
    game:GetService("Players").PlayerAdded:Connect(function(Player)
        return Player
    end)
end

function falselibrary:PlayerRemoved()
    game:GetService("Players").PlayerRemoving:Connect(function(Player)
        return Player
    end)
end

return falselibrary;
