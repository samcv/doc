#!highlights/node_modules/coffee-script/bin/coffee
args = process.argv
#console.log process.argv
#onsole.log args[4]
#if process.argv[2].not
#  console.log "you didn't say any arguments"

Highlights = require 'highlights'
fs = require 'fs'
path = require 'path'
highlighter = new Highlights()
highlighter.requireGrammarsSync
  modulePath: require.resolve('./atom-language-perl6/package.json')

file_to_hl = path.resolve(process.argv[2])
console.log file_to_hl
#files = fs.readdirSync(TestFolder)
foo = ->
  fs.readFileSync file_to_hl, 'utf8'

html = highlighter.highlightSync
  fileContents: foo()
  scopeName: 'source.perl6fe'

console.log html

#for file in files
#  foo = ->
#    fs.readFileSync path.resolve(TestFolder, file), 'utf8'
#  html = highlighter.highlightSync
#    fileContents: foo()
#    scopeName: 'source.perl6fe'

#  console.log html
