return {
	bot_api_key = '201783465:AAHyFzKn3OWWPheogm6T1iSKMgaTJBmMmOc', -- Your authorization token from the botfather.
	admins = {105831687}, -- Your Telegram ID.
	time_offset = 0, -- Differences, in seconds, between your time and UTC.
	lang = 'en', -- Two-letter language code.
	log_chat = nil, -- The channel, group, or user to send error reports to. --If this is not set, errors will be printed to the console.
	google_api_key = '', 	-- http://console.developers.google.com
	google_cse_key = '', -- https://cse.google.com/cse
	thecatapi_key = '', -- http://thecatapi.com/docs.html
	
	errors = { -- Generic error messages used in various plugins.
		connection = 'Connection error.',
		results = 'No results found.',
		argument = 'Invalid argument.',
		syntax = 'Invalid syntax.',
	},

	plugins = { -- To enable a plugin, add its name to the list.
		---'control.lua', fixing bugs ...
		'blacklist',
		'about',
		'ping',
		'echo',
		'luarun',
		'gSearch',
		'gMaps',
		'wikipedia',
		'imdb',
		'calc',
		'time',
		'cats',
		'shout',
		-- Put new plugins above this line.
		'help',
		'greetings',
		'markdown'
	}

}
