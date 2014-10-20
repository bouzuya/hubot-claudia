# Description
#   A Hubot script that respond the image of Ms. Claudia
#
# Configuration:
#   HUBOT_CLAUDIA_BASE_URL
#
# Commands:
#   無茶しやがって - respond the image of Ms. Claudia
#
# Author:
#   bouzuya <m@bouzuya.net>
#
module.exports = (robot) ->
  path = require 'path'

  BASE_URL = process.env.HUBOT_CLAUDIA_BASE_URL
  COPYRIGHT = '© 2011 Microsoft Corporation All Rights Reserved.'

  robot.router.get '/hubot-claudia.jpg', (req, res) ->
    image = path.resolve(__dirname, '../hubot-claudia.jpg')
    res.sendfile image

  robot.hear /無茶しやがって$/i, (res) ->
    res.send BASE_URL + '/hubot-claudia.jpg\n' + COPYRIGHT
