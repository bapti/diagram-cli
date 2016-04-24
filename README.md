# Plant UML diagram-cli
Easily create diagrams for your github repository.  

Command line interface for generating diagrams from plant uml files in a convention based way and displaying them in markdown documents

[![Build Status](https://travis-ci.org/bapti/diagram-cli.svg?branch=master)](https://travis-ci.org/bapti/diagram-cli)
[![npm version](https://badge.fury.io/js/diagram-cli.svg)](https://badge.fury.io/js/diagram-cli)

#### Contents

- [What does it do?](#what-does-it-do)
- [Usage](#usage)
- [Windows requirements](#windows-requirements)
- [Mac requirements](#mac-requirements)
- [Libraries and useful links](#libraries-and-useful-links)
- [To do](#to-do)

#### What does it do?

Running `diagrams init` creates a `./diagrams` folder populated with some default folders like below.  

```sh
root                 # your root folder
  - diagrams         # all diagrams in here
    - diagrams.yml   # config file
    - README.md      # readme file with all diagrams displayed as pngs
    - img            # images are generated to here
    - puml           # all diagram files go in here
    - hbs            # template for generated markdown
```

Running a further command of `diagrams make` generates any files in the `./diagrams/puml` into `.png` files in the `./diagrams/img` folder.

It also creates a `README.md` in the root of `./diagrams` and populates it with links to the `.png` files so they automatically appear in your github repository. All you have to do is add a link in your front page of your github with something like `[Diagrams](./diagrams/README.md)`.

#### Usage

Using the [npm package](https://www.npmjs.com/package/diagram-cli)

```sh
# install the cli globally
npm install -g diagram-cli

# show usage
diagrams --help

# initialise folders and files
diagrams init

# generate diagrams
diagrams make
```

#### Windows requirements

```sh
# You need to have graphviz installed to generate diagrams
choco install javaruntime
choco install graphviz

# Add the path to your environment variables
# C:\Program Files (x86)\Graphviz2.38\bin
```

#### Mac requirements

```sh
# You need to have graphviz installed to generate diagrams
brew install graphviz
```

#### Libraries and useful links

- Should JS [docs](http://unitjs.com/guide/should-js.html)

#### To do

- [ ] Add description markdown files that get build in tandem
- [ ] Add a server to serve as a website
