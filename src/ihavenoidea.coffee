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
  'http://i.imgur.com/XhZzd2h.jpg',
  'http://i.imgur.com/GtgkJ38.jpg',
  'http://i.imgur.com/Jv3qULQ.jpg',
  'http://i.imgur.com/1hrVmZD.jpg',
  'http://i.imgur.com/xC0JCFK.jpg',
  'http://i.imgur.com/kFNAAeX.jpg',
  'http://i.imgur.com/9s62t7y.jpg',
  'http://i.imgur.com/ugZ2tGn.jpg',
  'http://i.imgur.com/DeyWrC2.jpg',
  'http://i.imgur.com/tkbLyTG.jpg',
  'http://i.imgur.com/g8EbISz.jpg',
  'http://i.imgur.com/RuFZdPR.jpg',
  'http://i.imgur.com/YLEM3Ns.jpg',
  'http://i.imgur.com/1TWbKbW.jpg'
]

regex = new RegExp gaffes.join('|'), 'ig'
