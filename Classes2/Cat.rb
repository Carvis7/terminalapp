#Cat class

require_relative "Pet.rb" 
require "colorize"

class Cat < Pet

    def image
        puts "    /\\\___/\\\ ".colorize(:yellow).on_black
        puts "   /       \\\ ".colorize(:yellow).on_black
        puts "  l  u   u  l".colorize(:yellow).on_black
        puts "--l----*----l--".colorize(:yellow).on_black
        puts "   \\\   w   /     - Meow!".colorize(:yellow).on_black
        puts "     ======".colorize(:yellow).on_black
        puts "   /       \\\ __".colorize(:yellow).on_black
        puts "   l        l\\\ \\\ ".colorize(:yellow).on_black
        puts "   l        l/ /   ".colorize(:yellow).on_black
        puts "   l  l l   l /".colorize(:yellow).on_black
        puts "   \\\ ml lm /_/".colorize(:yellow).on_black
    end

end