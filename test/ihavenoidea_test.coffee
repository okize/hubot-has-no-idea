chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'No idea:', ->
  businesscat_module = require('../src/ihavenoidea')

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @businesscat_module = businesscat_module(@robot)

  describe 'i have no idea what i\'m doing', ->

    it 'should register a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/i have no idea what i'm doing/)
