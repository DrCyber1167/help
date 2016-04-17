local command = 'ping'
local triggers = {
	'^[!/#]ping[@'..bot.username..']*',
}

local action = function(msg)
sendChatAction(msg.chat.id, 'typing')
	sendMessage(msg.chat.id, msg.text_lower:match('^[!/#]ping') and 'Pong!' or 'Annyong.')
end

return {
	action = action,
	triggers = triggers
}
