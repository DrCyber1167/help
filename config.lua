return {

	-- Your authorization token from the botfather.
	bot_api_key = '',
	-- Your Telegram ID.
	admin = '',
	-- Differences, in seconds, between your time and UTC.
	time_offset = 0,
	-- Two-letter language code.
	lang = 'en',
	-- The channel, group, or user to send error reports to.
	-- If this is not set, errors will be printed to the console.
	log_chat = nil,
	-- http://console.developers.google.com
	google_api_key = '',
	-- https://cse.google.com/cse
	google_cse_key = '',
	-- http://thecatapi.com/docs.html
	thecatapi_key = '',
	
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
