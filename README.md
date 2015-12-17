# Plant UML diagram-cli
Command line interface for generating diagrams from plant uml files in a convention based way and displaying them in markdown documents

[![Build Status](https://travis-ci.org/bapti/diagram-cli.svg?branch=master)](https://travis-ci.org/bapti/diagram-cli)


#WARNING - LIBRARY NOT FUNCTIONAL YET!

#### Contents

- [What does it do](#what-does-it-do)
- [Usage](#usage)
- [Windows requirements](#windows-requirements)
- [Mac requirements](#mac-requirements)
- [Libraries and useful links](#libraries-and-useful-links)

#### What does it do?

Running `diagrams init` creates a `./diagrams` folder populated with some default folders.  Running a further command of `diagrams` generates any files in the `./diagrams/puml` into `.png` files in the `./diagrams/img` folder.  

It also creates a `README.md` in the root of `./diagrams` and populates it with links to the `.png` files so they automatically appear in your github repository. All you have to do is add a link in your front page of your github with `[Link to diagrams](./diagrams/README.md)`.

#### Usage

```sh
# install the cli globally
npm install -g diagram-cli

# show usage
diagrams --help

# initialise folders and files
diagrams init

# generate diagrams
diagrams
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
