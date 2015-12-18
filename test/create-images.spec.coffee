should = require 'should'
del = require 'del'
path = require 'path'
fs = require 'fs'
globby = require 'globby'

sut = require('./../src/images').create

pumlPath = path.resolve('./test-puml')
outputPath = path.resolve('./test-output')

describe 'Image create', () ->
  @.timeout(5000)

  before(() ->
    del.sync(["#{outputPath}/*.png"])
  )

  after(() ->
    del.sync(["#{outputPath}/*.png"])
  )

  it 'Has 1 image in the test-output folder', (done) ->
    sut( pumlPath, outputPath, (err, results) ->
      results.should.have.lengthOf(1)
      should.not.exist(err)
      done()
    )
