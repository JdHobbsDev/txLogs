-- Player Kicked Event
AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    local idName = GetPlayerName(eventData.target) or "Unknown Player"
    local reason = eventData.reason or "No reason provided"
    local author = eventData.author or "Unknown Moderator"

    local embed = {
        {
            title = "__Player Kicked__",
            color = 15445283,
            fields = {
                { name = "Player", value = idName, inline = false },
                { name = "Player ID", value = tostring(eventData.target), inline = false },
                { name = "Reason", value = reason, inline = false },
                { name = "Moderator", value = author, inline = false }
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(modWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Player Kicked: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)

-- Player Warned Event
AddEventHandler('txAdmin:events:playerWarned', function(eventData)
    local idName = GetPlayerName(evendData.target) or "Unknown Player"
    local reason = eventData.reason or "No reason provided"
    local author = eventData.author or "Unknown Moderator"
    local actionId = eventData.actionId or "N/A"

    local embed = {
        {
            title = "__Player Warned__",
            color = 15445283,
            fields = {
                { name = "Player", value = idName, inline = false },
                { name = "Player ID", value = tostring(eventData.target), inline = false },
                { name = "Reason", value = reason, inline = false },
                { name = "Moderator", value = author, inline = false },
                { name = "Action ID", value = actionId, inline = false }
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(modWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Player Warned: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)

-- Player Banned Event
AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    local idName = eventData.targetName or "Unknown Player"
    local actionId = eventData.actionId or "Unknown Identifier"
    local reason = eventData.reason or "No reason provided"
    local author = eventData.author or "Unknown Moderator"
    local durationInput = eventData.duration or "Permanent"
    local expiration = eventData.expiration or "Never"

    local embed = {
        {
            title = "__Player Banned__",
            color = 16711680,
            fields = {
                { name = "Player", value = idName, inline = false },
                { name = "Action ID", value = actionId, inline = false },
                { name = "Reason", value = reason, inline = false },
                { name = "Ban Length/Expiry", value = durationInput .. " / " .. expiration, inline = false },
                { name = "Moderator", value = author, inline = false }
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(modWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Player Banned: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)

-- Player Healed (or Messaged) Event
AddEventHandler('txAdmin:events:playerDirectMessage', function(eventData)
    local idName = GetPlayerName(eventData.target) or "Unknown Player"
    local author = eventData.author or "Unknown Moderator"
    local message = eventData.message or "No message provided"

    local embed = {
        {
            title = "__Player DMed__",
            color = 1900288,
            fields = {
                { name = "Player", value = idName, inline = false },
                { name = "Player ID", value = tostring(eventData.target), inline = false },
                { name = "Message", value = message, inline = false },
                { name = "Moderator", value = author, inline = false }
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(modWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Player DMed: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)

-- Action Revoked Event
AddEventHandler('txAdmin:events:actionRevoked', function(eventData)
    local playerName = eventData.playerName or "Unknown Player"
    local actionType = eventData.actionType or "Unknown Action"
    local actionReason = eventData.actionReason or "No reason provided"
    local actionAuthor = eventData.actionAuthor or "Unknown Moderator"
    local revokedBy = eventData.revokedBy or "Unknown Revoker"

    local embed = {
        {
            title = "__Action Revoked__",
            color = 1900288,
            fields = {
                { name = "Player", value = playerName, inline = false },
                { name = "Action Revoked", value = actionType, inline = false },
                { name = "Original Reason", value = actionReason, inline = false },
                { name = "Original Moderator", value = actionAuthor, inline = false },
                { name = "Revoked By", value = revokedBy, inline = false }
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(modWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Action Revoked: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)

-- Player Healed Event
AddEventHandler('txAdmin:events:healedPlayer', function(eventData)
    local idName = GetPlayerName(eventData.id) or "Unknown Player"

    local embed = {
        {
            title = "Player Healed",
            color = 1900288,
            fields = {
                { name = "Player", value = idName, inline = false },
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(modWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Player Healed: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)


-- Server Announcement Event
AddEventHandler('txAdmin:events:announcement', function(eventData)
    local author = eventData.author or "Unknown Author"
    local message = eventData.message or "Unknown Message"

    local embed = {
        {
            title = "Server Announcement",
            color = 5087487,
            fields = {
                { name = "Author", value = author, inline = false },
                { name = "Message", value = message, inline = false },
            },
            author = { name = "txAdmin Logging System" }
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers)
        if err ~= 200 then
            print("Failed to send webhook for Announcement: " .. tostring(err))
        end
    end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
end)