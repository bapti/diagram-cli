globby = require 'globby'
fs = require 'fs'
_ = require 'highland'

# var exportPng = function(filePath, done){
# 	console.log("exporting ", filePath);
#   var gen = plantuml.generate(filePath, { format: 'png' })
#   var chunks = []
#
#   gen.out.on('data', function (chunk) { chunks.push(chunk) })
#   gen.out.on('end', function () {
# 		var fileName = path.basename(filePath, '.puml')
#     var buffer = Buffer.concat(chunks)
# 		fs.writeFile("./img/" + fileName + ".png",  buffer, done);
#   })
# }

module.exports = (pumlPath, imagePath, done) ->
  _(globby(["#{conifg.pumlPath}/*.puml"]))
    .map(_.log)
    .done(done)
