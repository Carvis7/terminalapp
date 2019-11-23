
#dog class

require_relative "Pet.rb" 
require "colorize"

class Dog < Pet
    
    def image
        puts "/^-----^\\\ ".colorize(:black).on_white
        puts "V  o o  V".colorize(:black).on_white
        puts " |  Y  |     -Woof!".colorize(:black).on_white
        puts "  \\\ - /".colorize(:black).on_white
        puts "  / - \\\ ".colorize(:black).on_white
        puts "  |    \\\ ".colorize(:black).on_white
        puts "  |     \\     )".colorize(:black).on_white
        puts "  || (___\\\====".colorize(:black).on_white
    end
end
