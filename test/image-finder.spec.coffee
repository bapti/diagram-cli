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

  it 'Result 1 readable name correct', () ->
    result[0].image_readable_name.should.equal("Test Image 2");

  it 'Result 1 link name correct', () ->
    result[0].image_link.should.equal("test-image-2");

  it 'Result 1 file name correct', () ->
    result[0].image_file_name.should.equal("TEST_IMAGE_2.png");

  it 'Result 2 readable name correct', () ->
    result[1].image_readable_name
      .should.equal("Test Img 1");

  it 'Result 2 link name correct', () ->
    result[1].image_link
      .should.equal("test-img-1");

  it 'Result 2 file name correct', () ->
    result[1].image_file_name
      .should.equal("test-img-1.png");
