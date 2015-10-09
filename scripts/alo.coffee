module.exports = (robot) ->

	aloMessages = [":aloji: Har dere kontroll?", ":aloji: Hvor er du?", ":aloji: Er dere på saken?", ":aloji: Det er du som har tatt roastbiffen, ja?", ":aloji: Det er faktisk ganske interessant..."]

	aloMessage = () ->
		index = parseInt((Math.random() * aloMessages.length) >> 0)
		message = aloMessages[index]
	  
	robot.hear /\balo\b/i, (res) ->
	  
	  # if res.match
	  # 	res.send "user"
	  # 	user = res.match[1]

	  # res.send user

	  # if user
	  #   kontrollMessage = "Har du kontroll, " + user + "?"
	  #   setTimeout () ->
	  #      res.send kontrollMessage
	  #     , res.match[2] * 1000
	  # else
		res.send(aloMessage())