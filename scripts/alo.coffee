module.exports = (robot) ->

robot.hear /alo kontroll (.*)/i, (res) ->
  user = res.match[1]
  if user
    setTimeout () ->
       res.send "Har du kontroll, ?"
      , 10 * 1000
  else
    res.send "Har dere kontroll?"
