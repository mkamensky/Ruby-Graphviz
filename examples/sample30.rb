#!/usr/bin/ruby

$:.unshift( "../lib" );
require "graphviz"

GraphViz.new(:g){ |g|
  g[:center] = true
  a = g.add_node("A", :shape => "sdl_procedure_start", :peripheries => 0 )
  b = g.add_node("B", :shape => "sdl_save", :peripheries => 0)
  c = g.add_node("n", :shape => "box", :label => "\\G::\\N\\r")
  a << b << c
}.save( :ps => "#{$0}.ps", :extlib => "sdlshapes/sdl.ps" )