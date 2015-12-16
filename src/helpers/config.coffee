path = require 'path'

diagramsPath = path.resolve('./diagrams')

module.exports =
  diagramsPath: diagramsPath
  imgPath: path.resolve("#{diagramsPath}/img")
  pumlPath: path.resolve("#{diagramsPath}/puml")
  mdPath: path.resolve("#{diagramsPath}/md")
