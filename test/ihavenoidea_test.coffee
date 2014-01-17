chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'No idea:', ->
  ihavenoidea_module = require('../src/ihavenoidea')

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
