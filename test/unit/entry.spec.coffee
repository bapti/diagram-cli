should = require 'should'

describe 'A mock unit test', () ->
  it 'should pass', () ->
    [1,2,3].should.match([1,2,3])
