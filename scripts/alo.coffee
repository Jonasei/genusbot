module.exports = (robot) ->

	aloMessages = ["Har dere kontroll?", "Hvor er du?", "Er dere på saken?", "Det er du som har tatt roastbiffen, ja?", "Det er faktisk ganske interessant..."]
	aloMessagesName = ["Har du kontroll, {name}?", "{name}, hvor er du?", "Er du på saken, {name}?", "Bena på pulten er ikke lov, {name}!"]

	aloMessageName = (name) ->
		index = parseInt((Math.random() * aloMessagesName.length) >> 0)
		message = ":aloji: " + aloMessagesName[index]
		message.replace(/{name}/, name);
	  
	robot.hear /\balo$/i, (res) ->
		res.send ":aloji: " + res.random aloMessages

	robot.hear /\balo\b(\s)+(.+)/i, (res) ->
		user = res.match[2]
		res.send(aloMessageName(user))