should = require 'should'

describe 'A mock integration test', () ->
  it 'should pass', () ->
    [1,2,3].should.match([1,2,3])
