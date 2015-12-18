fs = require 'fs-extra'
globby = require 'globby'
del = require 'del'
_ = require 'lodash'

makeConfig = require('./../config')
images = require('./../images')
readme = require('./../readme')

getBasePath = () ->
  if fs.statSync("./diagrams").isDirectory()
    "./diagrams"
  else
    throw new Error("Unable to find diagrams folder")

module.exports = (options) ->
  basePath = getBasePath()
  config = makeConfig(basePath)

  del.sync([config.imagePath])
  fs.mkdirsSync(config.imagePath)

  images.create(config.pumlPath, config.imagePath ,() ->
    imageMetaData = images.metaData(config.imagePath)

    readme.create(
      config.readmeTemplatePath
      config.readmeOutputPath
      _.merge(imageMetaData, config)
    )
  )
