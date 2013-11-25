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

gaffes = [
  'i ha(ve|s) no idea',
  '(wh|)oops(|ie)',
  'my (bad|mistake|fault)',
  'd(\')oh'
]

images = [
  'http://imgur.com/XhZzd2h',
  'http://imgur.com/GtgkJ38',
  'http://imgur.com/Jv3qULQ',
  'http://imgur.com/1hrVmZD',
  'http://imgur.com/xC0JCFK',
  'http://imgur.com/kFNAAeX',
  'http://imgur.com/9s62t7y',
  'http://imgur.com/QJ4MoXP',
  'http://imgur.com/ugZ2tGn',
  'http://imgur.com/DeyWrC2',
  'http://imgur.com/tkbLyTG',
  'http://imgur.com/g8EbISz',
  'http://imgur.com/RuFZdPR',
  'http://imgur.com/YLEM3Ns',
  'http://imgur.com/1TWbKbW'
]

regex = new RegExp gaffes.join('|'), 'ig'
