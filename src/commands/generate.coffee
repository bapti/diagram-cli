
module.exports = () ->
  console.log 'hi from generate'

# Handlebars = require('handlebars');
# path = require('path');
# fs = require('fs');
# globby = require('globby');
# plantuml = require('node-plantuml');
# async = require('async');
# del = require('del');
# _ = require('lodash')


# del(['./img/*.png'])
# globby(['./puml/**/*.puml'])

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
#   globby(['./img/**/*.png']).then(function(paths) {
#   	var images = paths.map(function(filePath) {
# 			var fileName = path.basename(filePath)
#       return {
# 				'image_readable_name': _.startCase(path.basename(filePath, '.png')),
# 				'image_link': _.kebabCase( path.basename(filePath, '.png') ),
# 				'image_file_name': path.basename(filePath)
# 			};
#     });
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
