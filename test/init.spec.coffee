should = require 'should'
del = require 'del'
path = require 'path'
fs = require 'fs'

sut = require('./../src').init

diagramPath = path.resolve('diagrams')

describe 'Init command', () ->
  describe 'Should succeed and', () ->
    statsResult = null

    before () ->
      del.sync([diagramPath])
      sut({path: diagramPath})
      statsResult = fs.statSync(diagramPath)

    it 'Should create folder', () ->
      statsResult.isDirectory()
        .should.be.true
