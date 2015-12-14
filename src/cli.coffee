program = require('commander');

program
  .version(require('./../package.json').version)

program
  .command('init')
  .description('initialise the diagrams directory')
  .action( (options) ->
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
