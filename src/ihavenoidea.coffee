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
  'http://i.imgur.com/1TWbKbW.jpg',
  'http://i.imgur.com/TI3WnNA.jpg',
  'http://i.imgur.com/i2HzqxG.jpg',
  'http://i.imgur.com/rxmM8kW.jpg',
  'http://i.imgur.com/rOLIY1j.jpg',
  'http://i.imgur.com/QBmu04M.jpg',
  'http://i.imgur.com/uoopXkE.jpg',
  'http://i.imgur.com/fZamcNF.jpg',
  'http://i.imgur.com/dBlUucn.jpg',
  'http://i.imgur.com/bTd5iG4.jpg',
  'http://i.imgur.com/os4PzqA.jpg',
  'http://i.imgur.com/gjqxbP9.jpg',
  'http://i.imgur.com/iigEnN5.jpg',
  'http://i.imgur.com/EWHIp7D.jpg',
  'http://i.imgur.com/3nIX7wM.jpg',
  'http://i.imgur.com/tbcUXuk.jpg',
  'http://i.imgur.com/C3U88dt.jpg',
  'http://i.imgur.com/ix8sKXE.jpg',
  'http://i.imgur.com/Ln3XGr8.jpg',
  'http://i.imgur.com/EpTWiVV.jpg',
  'http://i.imgur.com/oznsKcx.jpg',
  'http://i.imgur.com/H8ql85J.jpg'
]

regex = new RegExp gaffes.join('|'), 'ig'

