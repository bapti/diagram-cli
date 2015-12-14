fsExtra = require('fs-extra')

module.exports = (options) ->
  fsExtra.mkdirsSync(options.path)
  fsExtra.copySync('./template', options.path)
