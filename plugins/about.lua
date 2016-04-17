local command = 'about'
local doc = '`Returns information about the bot.`'

local triggers = {
	'^[!/#]about[@'..bot.username..']*',
	'^[!/#]start[@'..bot.username..']*',
	'^bot[@'..bot.username..']*',
	'^hi[@'..bot.username..']*',
	''
}

local action = function(msg)
sendChatAction(msg.chat.id, 'typing')
	if msg.forward_from then
		if msg.chat.type == 'private' or msg.from.id == config.admin then
		local fwdinfo = '#ID => '..msg.forward_from.id
		..'\n#Name => '..msg.forward_from.first_name
		..'\n#Username => @'..msg.forward_from.username
		 ..'\n\nPinkPanther🐆'
	senduserprofilephotos(msg.chat.id,msg.forward_from.id,fwdinfo)
	--sendMessage(msg.chat.id,msg.forward_from.id)
		return
			end
	end
	local message = 'I am '..bot.first_name..', the plugin-wielding, multipurpose Telegram bot.\n\nMy owner🍼 => [RoYalTeam](http://telegram.me/royalteamch)\nMy base🙇 => [topkecleon/otouto](https://github.com/topkecleon/otouto)\n\nSend => /help to get started.'

	if msg.new_chat_participant and msg.new_chat_participant.id == bot.id then
		sendMessage(msg.chat.id, message, true,nil,true)
		return
	elseif msg.text_lower:match('^[!/#}about[@'..bot.username..']*') then
		sendMessage(msg.chat.id, message, true,nil,true)
		return
	elseif msg.text_lower:match('^[!/#]start') then
		sendMessage(msg.chat.id, message, true,nil,true)
		return
	elseif msg.text_lower:match('^bot') then
		sendMessage(msg.chat.id, 'Yes?', true,nil,true)
		return
	elseif msg.text_lower:match('^hi') then
		sendMessage(msg.chat.id, 'Hello my name is *'..bot.first_name..'*\n send /help for me ☺️', true,nil,true)
		return
	end
	

	return true

end

return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
