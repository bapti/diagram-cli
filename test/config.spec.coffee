should = require 'should'
path = require 'path'
fs = require 'fs'

sut = require('./../src/helpers/config')
diagramsPath = path.resolve('./diagrams')

describe 'Config helper', () ->

  result = null
  before () ->
    result = sut(diagramsPath)

  it 'Diagrams path should be correct', () ->
    result.diagramsPath
      .should.containEql("diagrams")

  it 'Img path should be correct', () ->
    result.imgPath
      .should.containEql("diagrams\\img")

  it 'Markdown path should be correct', () ->
    result.mdPath
      .should.containEql("diagrams\\md")

  it 'Plant UML path should be correct', () ->
    result.pumlPath
      .should.containEql("diagrams\\puml")
