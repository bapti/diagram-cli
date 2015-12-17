should = require 'should'
del = require 'del'
path = require 'path'
fs = require 'fs'

sut = require('./../src/images').metaData
imgPath = path.resolve('./test-assets')

describe 'Image meta data helper', () ->

  result = null
  before () ->
    result = sut(imgPath)

  it 'Has 2 results', () ->
    result.should.have.length(2);
