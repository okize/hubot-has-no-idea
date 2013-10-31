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
#   make a mistake - I have no idea what I'm doing
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
  'http://i.imgur.com/pOme4ix.jpg',
  'http://i3.kym-cdn.com/photos/images/original/000/234/739/fa5.jpg',
  'http://i1.kym-cdn.com/photos/images/original/000/234/765/b7e.jpg',
  'http://i0.kym-cdn.com/photos/images/original/000/234/142/196.jpg',
  'http://i2.kym-cdn.com/photos/images/original/000/234/137/5c4.jpg',
  'http://i3.kym-cdn.com/photos/images/newsfeed/000/490/406/dd3.jpeg',
  'http://i0.kym-cdn.com/photos/images/newsfeed/000/464/510/a5b.jpg',
  'http://i1.kym-cdn.com/photos/images/original/000/310/183/6a0.jpg',
  'http://i3.kym-cdn.com/photos/images/original/000/308/125/1ee.jpg',
  'http://i0.kym-cdn.com/photos/images/original/000/305/236/ddc.jpg',
  'http://i3.kym-cdn.com/photos/images/original/000/305/235/07a.jpg',
  'http://i0.kym-cdn.com/photos/images/original/000/284/499/a69.jpg',
  'http://i1.kym-cdn.com/photos/images/original/000/258/461/be0.jpg',
  'http://i0.kym-cdn.com/photos/images/original/000/234/767/8d0.jpg'
]

regex = new RegExp gaffes.join('|'), 'ig'
