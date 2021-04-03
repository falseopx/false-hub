--init--
local falselibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/falseopx/falsehub/main/libraries/falselibrary.lua"))()
red     = Color3.new(0.741176, 0, 0)
green   = Color3.new(0, 1, 0.498039)
yellow  = Color3.new(1, 1, 0.498039)
--games--
falselibrary:sysmsg("Welcome to falsehub version 1.2.2, please wait while we find your game..", yellow)
local games = {
  [286090429] = "Arsenal"
}
--find game--
for g,l in pairs(games) do
  if i == game.PlaceId then
      falselibrary:sysmsg("Game found: ".. l .." Loading..", green)
      loadstring(l)
  else
      falselibrary:sysmsg("Sorry, this game isn't supported. Check the discord for the complete game list.", red)
  end
end
