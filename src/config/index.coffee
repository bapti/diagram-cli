path = require 'path'
yaml = require 'js-yaml'
fs = require 'fs'
_ = require 'lodash'


module.exports = (basePath) ->
  configFile = fs.readFileSync("#{basePath}/diagrams.yml", 'utf8')
  config = yaml.safeLoad(configFile)

  paths =
    diagramsPath: path.resolve(basePath)
    imagePath: path.resolve("#{basePath}/img")
    pumlPath: path.resolve("#{basePath}/puml")
    readmeTemplatePath: path.resolve("#{basePath}/hbs/README.hbs")
    readmeOutputPath: path.resolve("#{basePath}/README.md")

  _.merge(config, paths)
