should = require 'should'
path = require 'path'
fs = require 'fs'

sut = require('./../src/config')
diagramsPath = path.resolve('./template')

describe 'Config helper', () ->

  result = null
  before () ->
    result = sut(diagramsPath)

  it 'Diagrams path should be correct', () ->
    result.diagramsPath.should.containEql("template")

  it 'Img path should be correct', () ->
    result.imagePath.should.containEql("img")

  it 'Plant UML path should be correct', () ->
    result.pumlPath.should.containEql("puml")

  it 'readmePath template path should be correct', () ->
    result.readmeTemplatePath.should.containEql("hbs")
    result.readmeTemplatePath.should.containEql("README.hbs")

  it 'readmePath template path should be correct', () ->
    result.readmeOutputPath.should.containEql("README.md")
