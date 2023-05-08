local function sendwebhook(msg)
    local msg = {
      ["content"]= "**Arkhalis Data**",
      ["embeds"]= {
        {
          ["title"]= "`Arkhalis Pet Data`",
          ["description"]= "",
          ["url"]= "https://discord.gg/N8VMJJXuDa",
          ["color"]= ""..webhookcolor.."",
          ["fields"]= {
            {
              ["name"]= "Pet Name & Rarity",
              ["value"]= "```**🐕Pet Name: **"..v2.name.."\n**🏆Pet Rarity: **"..v2.rarity.."```",
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
