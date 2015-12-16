Handlebars = require('handlebars')
path = require('path')
fs = require('fs')
globby = require('globby')
plantuml = require('node-plantuml')
del = require('del')
_ = require('lodash')

config = require('./../helpers/config')
images = require('./../helpers/image-meta-data')

module.exports = (options) ->

  unless fs.statSync(diagramsPath).isDirectory()
    throw new Error "Diagrams folder not found"

  del.sync(["#{imgPath}/*.png"])
  pumlFiles = globby.sync(["#{pumlPath}/*.puml"])

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
#
# 	.then(function(paths) {
# 		console.log(paths);
# 		async.each(paths, exportPng, done);
# 	});
#
#
#
# 		console.log("Writing images to markdown", images);
#
#     var source = fs.readFileSync('./diagrams.hbs', 'utf8');
#   	var template = Handlebars.compile(source);
# 		var markdown = template({images: images});
#
# 		fs.writeFileSync('./md/README.md', markdown, 'utf8');
#
#     done();
#   });
