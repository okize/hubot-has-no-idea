# Description:
#   Hubot script to display "I have no idea what I'm doing" images
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   you have no idea what you're doing
#
# Notes
#   None
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images

images = require './images.json'

gaffes = [
  'i ha(ve|s) no idea',
  'i don\'t know',
  '\\b(wh|)oops(|ie)\\b',
  'my (bad|mistake|fault)',
  'd(\')oh'
]

regex = new RegExp gaffes.join('|'), 'ig'
