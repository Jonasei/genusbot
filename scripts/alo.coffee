module.exports = (robot) ->

	robot.hear /alo kontroll/i, (res) ->
	  
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
	    res.send "Har dere kontroll?"
	