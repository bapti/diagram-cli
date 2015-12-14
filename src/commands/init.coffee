fsExtra = require 'fs-extra'
path = require 'path'

module.exports = (options) ->
  fsExtra.mkdirsSync(options.path)
  fsExtra.copySync(path.join(__dirname, '../../template'), options.path)
