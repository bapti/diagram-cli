program = require('commander');

program
  .version(require('./../package.json').version)

program
  .command('init [ path]')
  .description('initialise the diagrams directory')
  .option("--project <project>", "The name of your project")
  .option("--path <path>", "The path to put the /diagrams folder. defaults to ./")
  .action( (options) ->
    options.project = options.project || "a cool project"
    options.path = options.path || "./diagrams"
    require('./commands/init')(options)
  )

program
  .command('generate')
  .alias('gen')
  .description('generate diagrams in the diagrams directory')
  .action( (options) ->
    require('./commands/generate')(options)
  )

program.parse( process.argv )
