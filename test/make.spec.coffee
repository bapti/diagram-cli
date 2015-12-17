should = require 'should'
del = require 'del'
path = require 'path'
fs = require 'fs'

init = require('./../src').init
sut = require('./../src').make

diagramPath = path.resolve('diagrams')

describe 'Make command', () ->
  describe 'Should fail when', () ->
    before () ->
      del.sync([diagramPath])

    it 'folder does not exist', () ->
      should.throws sut
