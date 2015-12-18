path = require 'path'
_ = require 'lodash'

module.exports = (imagePaths) ->
  imagePaths.map( (filePath) ->
    baseLower = path.basename(filePath, '.png').toLowerCase()
    return {
      image_readable_name: _.startCase( baseLower )
      image_link: _.kebabCase( baseLower )
      image_file_name: path.basename( filePath )
    }
  )
