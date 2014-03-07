chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'No idea:', ->
  ihavenoidea_module = require('../src/ihavenoidea')
  imageUrlRegex = /^https?:\/\/(?:[a-z0-9\-]+\.)+[a-z]{2,6}(?:\/[^\/#?]+)+\.(?:jpe?g|gif|png)$/i

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @ihavenoidea_module = ihavenoidea_module(@robot)

  describe 'i have no idea what i\'m doing', ->

    it 'should register a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/i have no idea what i'm doing/)

    # it 'should not register a hear listener', ->
    #   expect(@robot.hear).to.not.have.been.calledWith(/troops/)

    # it 'should return an image url', ->
    #   callback = @robot.hear.firstCall.args[1]
    #   callback(@msg)
    #   expect(@msg.send).to.have.been.calledWithMatch(imageUrlRegex)

