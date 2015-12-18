globby = require 'globby'
_ = require 'highland'
plantuml = require 'node-plantuml'
path = require 'path'
fs = require 'fs-extra'


exportPng = (imagePath, filePath, done) ->
  gen = plantuml.generate(filePath, { format: 'png' })
  chunks = []

  gen.out.on 'data', (chunk) ->
    chunks.push chunk

  gen.out.on 'end', () ->
    fileName = path.basename(filePath, '.puml')
    buffer = Buffer.concat(chunks)
    outputPath = "#{imagePath}/#{fileName}.png"
    fs.writeFile(outputPath, buffer, (err) ->
      done(err, outputPath)
    )

module.exports = (pumlPath, imagePath, done) ->
  exporter = _.wrapCallback( _.curry(exportPng, imagePath) )
  errors = []

  fs.mkdirsSync("#{imagePath}");

  _(globby(["#{pumlPath}/*.puml"]))
    .flatten()
    .map(exporter)
    .parallel(10)
    .errors((err) ->
      errors.push err
      console.log err
    )
    .toArray((results) ->
      err = if errors.length > 0 then "Plant UML generation failed" else null
      done(err, results)
    )
