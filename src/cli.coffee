program = require 'commander'
commands = require './index'

program
  .version(require('./../package.json').version)

program
  .command('init')
  .description('initialise the diagrams directory')
  .action( commands.init )

program
  .command('generate')
  .alias('gen')
  .description('generate diagrams in the diagrams directory')
  .action( commands.generate )

program.parse( process.argv )
