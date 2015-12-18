fs = require 'fs'
globby = require 'globby'
del = require 'del'
_ = require 'lodash'

config = require('./../config')
images = require('./../images')
readme = require('./../readme')

module.exports = (options) ->
  unless fs.statSync(diagramsPath).isDirectory()
    throw new Error "Diagrams folder not found"

  del.sync(["#{conifg.imagePath}/*.png"])

  images.create(conifg.pumlPath)

  imageMetaData = images.metaData(config.imgPath)

  readme.create(
    config.readmeTemplatePath
    config.readmeOutputPath
    _.merge(imageMetaData, config)
  )
