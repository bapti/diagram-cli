program = require 'commander'
commands = require './index'

program
  .version(require('./../package.json').version)

program
  .command('init')
  .description('initialise the diagrams directory')
  .action( commands.init )

program
  .command('make', { isDefault: true })
  .description('make diagrams in the diagrams directory')
  .action( commands.make )

program.parse( process.argv )
