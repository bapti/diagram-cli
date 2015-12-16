fs = require 'fs'
fsExtra = require 'fs-extra'
path = require 'path'

module.exports = () ->
  templateFolderPath = path.join(__dirname, '../../template')
  destPath = path.resolve('./diagrams')

  unless fs.statSync(templateFolderPath).isDirectory()
    throw new Error "Template path not found"

  fsExtra.mkdirsSync(destPath)
  fsExtra.copySync(templateFolderPath, destPath)
