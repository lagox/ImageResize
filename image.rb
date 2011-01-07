#!/usr/bin/env ruby -w

class Resize
	
	attr_accessor :width, :height, :images
	
	def initialize(width, height)
		basedir = '.'
		@width = width
		@height = height
	end
	
	def get_files
		@images = Dir.glob("*.JPG")
	end
	
	def resize_action
		@images.each do |image|
			system("convert #{image} -resize #{width}x#{height} #{image}")
		end
	end
	
end

puts "=====ImageResize===="

puts "Input width:"
w = gets.chop!
puts "Input height:"
h = gets.chop!

#initialize 
r = Resize.new(w,h)
r.get_files
r.resize_action
