fs = require 'fs'
Handlebars = require 'handlebars'

module.exports = (templatePath, outputPath, templateData) ->
  source = fs.readFileSync(templatePath, 'utf8')
  template = Handlebars.compile(source)
  markdown = template(templateData)
  fs.writeFileSync(outputPath, markdown, 'utf8')
