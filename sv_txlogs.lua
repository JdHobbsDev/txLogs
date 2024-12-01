webhook = "" -- Webhook for normal actions (Joining/Leaving)
modWebhook = "" -- Webhook for moderation actions (Kicks/Warns/Bans)

AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    function sendToDiscord()
        idName = GetPlayerName(target)
        local embed = {
              {
                {
                    "content": "",
                    "tts": false,
                    "embeds": [
                      {
                        "id": 652627557,
                        "title": "__Player Kicked__",
                        "color": 15445283,
                        "fields": [
                          {
                            "id": 359117440,
                            "name": "Player",
                            "value": idName,
                            "inline": false
                          },
                          {
                            "name": "Player ID",
                            "value": target,
                            "inline": false
                          },
                          {
                            "name": "Player ID",
                            "value": target,
                            "inline": false
                          },
                          {
                            "id": 832923408,
                            "name": "Reason",
                            "value": reason,
                            "inline": false
                          },
                          {
                            "id": 222834141,
                            "name": "Moderator",
                            "value": author,
                            "inline": false
                          }
                        ],
                        "author": {
                          "name": "txAdmin Logging System"
                        }
                      }
                    ],
                    "components": [],
                    "actions": {},
                    "username": "txAdmin Logging"
                  }
              }
          }
      
        PerformHttpRequest(modWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
      end
end)

AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    function sendToDiscord()
        idName = GetPlayerName(target)
        local embed = {
            {
                "content": "",
                "tts": false,
                "embeds": [
                  {
                    "id": 652627557,
                    "title": "__Player Warned__",
                    "color": 15445283,
                    "author": {
                      "name": "txAdmin Logging System"
                    },
                    "fields": [
                    {
                        "name": "Player",
                        "value": idName,
                        "inline": false
                    }
                    {
                        "id": 359117440,
                        "name": "Player ID",
                        "value": target,
                        "inline": false
                      },
                      {
                        "id": 359117440,
                        "name": "Player ID",
                        "value": target,
                        "inline": false
                      },
                      {
                        "id": 832923408,
                        "name": "Reason",
                        "value": reason,
                        "inline": false
                      },
                      {
                        "id": 222834141,
                        "name": "Moderator",
                        "value": author,
                        "inline": false
                      },
                      {
                        "id": 689574178,
                        "name": "ID",
                        "value": actionId
                      }
                    ]
                  }
                ],
                "components": [],
                "actions": {},
                "username": "txAdmin Logging"
              }
          }
      
        PerformHttpRequest(modWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
      end
end)

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    function sendToDiscord()
        idName = GetPlayerName(target)
        if expiration == false then
            durationInput = "Permanent"
            expiration = "Never"
        end
        local embed = {
            {
                "content": "",
                "tts": false,
                "embeds": [
                  {
                    "id": 652627557,
                    "title": "__Player Banned__",
                    "color": 16711680,
                    "author": {
                      "name": "txAdmin Logging System"
                    },
                    "fields": [
                      {
                        "id": 359117440,
                        "name": "Player",
                        "value": idName,
                        "inline": false
                      },
                      {
                        "id": 359117440,
                        "name": "Player ID",
                        "value": target,
                        "inline": false
                      },
                      {
                        "id": 832923408,
                        "name": "Reason",
                        "value": reason,
                        "inline": false
                      },
                      {
                        "id": 816366411,
                        "name": "Ban Length/Expiry",
                        "value": durationInput "/" expiration,
                        "inline": false
                      },
                      {
                        "id": 385521273,
                        "name": "Moderator",
                        "value": author,
                        "inline": false
                      },
                      {
                        "id": 689574178,
                        "name": "ID",
                        "value": actionId
                      }
                    ]
                  }
                ],
                "components": [],
                "actions": {},
                "username": "txAdmin Logging"
              }
          }
      
        PerformHttpRequest(modWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
      end
end)

AddEventHandler('txAdmin:events:healedPlayer', function(eventData)
    function sendToDiscord()
        idName = GetPlayerName(target)
        local embed = {
            {
                "content": "",
                "tts": false,
                "embeds": [
                  {
                    "id": 652627557,
                    "title": "__Player DMed__",
                    "color": 1900288,
                    "author": {
                      "name": "txAdmin Logging System"
                    },
                    "fields": [
                      {
                        "id": 359117440,
                        "name": "Player",
                        "value": idName,
                        "inline": false
                      },
                      {
                        "id": 832923408,
                        "name": "Player ID",
                        "value": target,
                        "inline": false
                      },
                      {
                        "id": 748143666,
                        "name": "Message",
                        "value": "message"
                      },
                      {
                        "name": "Moderator",
                        "value": author,
                        "inline": false
                      },
                    ]
                  }
                ],
                "components": [],
                "actions": {},
                "username": "txAdmin Logging"
              }
          }
        PerformHttpRequest(modWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
      end
end)

AddEventHandler('txAdmin:events:actionRevoked', function(eventData)
    function sendToDiscord()
        idName = GetPlayerName(target)
        local embed = {
            {
                "content": "",
                "tts": false,
                "embeds": [
                  {
                    "id": 652627557,
                    "title": "__Action Revoked__",
                    "color": 1900288,
                    "author": {
                      "name": "txAdmin Logging System"
                    },
                    "fields": [
                      {
                        "id": 359117440,
                        "name": "Player",
                        "value": playerName,
                        "inline": false
                      },
                      {
                        "id": 832923408,
                        "name": "Action Revoked",
                        "value": actionType,
                        "inline": false
                      },
                      {
                        "id": 748143666,
                        "name": "Original Reason",
                        "value": actionReason
                      },
                      {
                        "id": 427700599,
                        "name": "Original Moderator",
                        "value": actionAuthor
                      },
                      {
                        "id": 279393620,
                        "name": "Revoked By",
                        "value": revokedBy
                      }
                    ]
                  }
                ],
                "components": [],
                "actions": {},
                "username": "txAdmin Logging"
              }
          }
        PerformHttpRequest(modWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
      end
end)