path = require 'path'

module.exports = (basePath) ->
  diagramsPath: path.resolve(basePath)
  imgPath: path.resolve("#{basePath}/img")
  pumlPath: path.resolve("#{basePath}/puml")
  mdPath: path.resolve("#{basePath}/md")
