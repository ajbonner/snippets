#!/usr/bin/env ruby1.9

# obligatory language introduction
puts "Hello, World!"
# system call
system "echo", "Hello,", "World!"

# syntactic sugar and string handling
5.times { print "Hello, Aaron! " }
puts ""
puts "Hello, " * 3 + "AZ!"
puts "Hello Aaron, I am running: " + `ruby --version`

person = "Aaron"
greeting = "Hello"
puts "#{greeting} #{person}"
puts "2+2=#{2+2}"
puts "Hello, #{ARGV[0]}"
"%s %s" % [ "Hi there", "Aaron" ]

# stdin / stdout
# puts "Enter your name: "
# person = STDIN.gets
# puts "Hi there, #{person}"

# method definition
def greet
  puts "Hi there"
end

greet

# blocks
def firstblock
  yield
end

firstblock { puts "hi there blocky" }

[ "Element 1 ", "Element 2 ", "Element 3 "].each { |e| print e }
puts ""

# procedures (lambda functions)
proc = lambda { |name| puts "Hello " + name.capitalize + "!" }
proc.call "aaron"

# XML & File System Handling
require "rexml/document"
puts "Ruby source file: " + __FILE__
pwd =  File.dirname(__FILE__)
puts "Source file working directory: " + pwd
file = File.new pwd + File::SEPARATOR + "hello.xml"
doc = REXML::Document.new file
puts doc.to_s

# Classes
class Greeter 
  def initialize( name )
    @name = name
  end
  
  def greet()
    puts "Hello there " + @name.capitalize + '!'
  end
end

greeter = Greeter.new "aaron"
greeter.greet

# TK integration and multi line comments
=begin
require "tk"
hello = new TkRoot.new
TkLabel.new hello do
  text "\n Hello Aaron! \n"
  pack
end
Tk.mainloop
=end

# Typing
x = 100
y = 1.5

puts x.class
puts y.class
puts y.kind_of? Integer 
puts y.kind_of? Float 
