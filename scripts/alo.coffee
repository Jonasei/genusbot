module.exports = (robot) ->

robot.hear /alo kontroll ([\w.-]*):?/i, (res) ->
  user = res.match[1]
  if user
    kontrollMessage = "Har du kontroll, " + username + "?"
    setTimeout () ->
       res.send kontrollMessage
      , 10 * 1000
  else
    res.send "Har dere kontroll?"
