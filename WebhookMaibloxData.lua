if game.PlaceId == 6284583030 then
	_G.GameIn = "Pet Simulator X"
elseif game.PlaceId == 7722306047 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then
	_G.GameIn = "PSX Hardcore"
elseif game.PlaceId == 12610002282 then
	_G.GameIn = "PSX Pro Trading Plaza"
elseif game.PlaceId == 11725212117 then
	_G.GameIn = "PSX Voice Trading Plaza"
else
	_G.GameIn = "❓ Couldn't find game"
end
local webhookcolor = "13369599"
local function sendwebhook(msg)
local msg = {
  ["content"]= "**🎁Arkhalis Data🎁**",
  ["embeds"]= {
    {
      ["title"]= "`🐶Pets Data🐶`",
      ["url"]= "https://discord.gg/N8VMJJXuDa",
      ["color"]= ""..webhookcolor.."",
      ["fields"]= {
        {
          ["name"]= "🐕Pet Name & Rarity🐕",
          ["value"]= "```Pet Name: "..v2.name.."\nPet Rarity: "..v2.rarity.."```",
		  ["inline"]= true
        }
      }
    }
  },
  ["attachments"] = {}
}
local Webhook = _G.Webhook
request = http_request or request or HttpPost or syn.request
request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
end
sendwebhook(msg)
