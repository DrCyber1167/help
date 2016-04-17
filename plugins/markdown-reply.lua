local command = 'Markdown by reply'
local doc = 'Markdown by reply'
local triggers = {
  '^[!/#]bold[@'..bot.username..']*',
  '^[!/#]italic[@'..bot.username..']*',
  '^[!/#]code[@'..bot.username..']*',
  '^[!/#]link[@'..bot.username..']*',
}

local action = function(msg)
  if msg.text:match("^[!/#]bold") and msg.reply_to_message then
  sendMessage(msg.chat.id, '*'..msg.reply_to_message.text..'*',true,nil,true)
  end

  if msg.text:match("^[!/#]italic") and msg.reply_to_message then
  sendMessage(msg.chat.id, '_'..msg.reply_to_message.text..'_',true,nil,true)
  end

  if msg.text:match("^[!/#]code") and msg.reply_to_message then
  sendMessage(msg.chat.id, '`'..msg.reply_to_message.text..'`',true,nil,true)
  end

  if msg.text:match("^[!/#]link ") and msg.reply_to_message then
  local matches = { string.match(msg.text, "^[!/#]link (.*)") }
  sendMessage(msg.chat.id, '['..msg.reply_to_message.text..']('..matches[1]..')',true,nil,true)
  end

end

return {
  action = action,
  triggers = triggers
}
