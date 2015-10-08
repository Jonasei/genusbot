module.exports = (robot) ->

	aloMessages = ["Har dere kontroll?", "Hvor er du?", "Er dere på saken?", "Er det du som har tatt roastbiffen, ja?", "Det er faktisk ganske interessant..."]

	aloMessage = () ->
		index = parseInt((Math.random() * aloMessages.length) >> 0)
		message = aloMessages[index]
	  
	robot.hear /alo/i, (res) ->
	  
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