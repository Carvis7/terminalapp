#Terminal App2

#virtual pet game

require_relative "Classes2/Dog.rb"
require_relative "Classes2/Cat.rb"
require "colorize"


pet_health = 75
pet_love = 40
pet_hunger = 50
pet_poop = false
pet_dirty = false
pet_types = ["(D)og", "(C)at"]
your_breed = nil


def new_day #Creates a new day, thus changing pet variables
            #Would like to automate this and link with real-time.
    "It's a new day!"
    
end

def pet_poop?
    if roll_dice(2, 6) >= 9
        true
    else
        false
    end
end

def roll_dice (number_of_dice, dice_size)
    total = 0
    1.upto(number_of_dice) do
        total = total + rand(dice_size) + 1
    end
    return total
end

def pet_plays?
    if roll_dice(2, 6) >= 11
        true
    else
        false
    end
end

puts "Good day!"
puts " "
puts "Let's adopt a pet!"
puts " "

# loop do

puts "What type of pet would you like?"
puts " "
puts pet_types.join("\n")

your_pet_type = gets.chomp.capitalize
current_day = new_day
# your_breed = []

dog_breed = ["German Shepherd", "Jack Russell", "Corgi", "Great Dane", "Dalmatian", "Rottweiler", "Labrador", "Poodle"]

cat_breed = ["Siamese", "Ragdoll", "Sphinx", "Blue Russian"]


#trying to make your_pet_type loop until a proper
#answer is recieved from user input

#Need to find a way to restrict user input rather than using a loop.
#As I can't figure out how to pull the breed variable from the loop.

#FML

# param[your_pet_type]=='D'||'C'


loop do
    if
        your_pet_type == 'D'

        your_breed = dog_breed.sample 
        puts Dog.new.image
        break
    elsif
        your_pet_type == 'C'

        your_breed = cat_breed.sample
        puts Cat.new.image
        break
    else
        puts "Please choose a pet that we have available."

    end
end

puts "What is your pets name?"
your_pet_name = gets.chomp.capitalize



while pet_health > 0 do 
    actions = ["T - Stats", "W - Walk Pet", "F - Feed", "C - Clean Pet", "P - Pick Up Poop", "S - Sleep"]

    if pet_poop == true
        puts "Eww... you stepped in some poop."
        puts "\n"
        actions << "P - Pick Up Poop"
        print "Better clean it up..."
    end

    print "What will you do?\n #{actions.join("\n ")}\n "

    owner_choice = gets.chomp.capitalize
    if pet_poop && pet_plays == true
        pet_health = pet_health - 1
        puts "No!!! #{your_pet_name} ran through the poop and is spreading it everywhere!"
    end

    if owner_choice == "W"
        pet_love = pet_love + 1
        puts "Let's go for a walk!"
        if pet_plays? == true
            puts " "
            puts "#{your_pet_name} runs out the door before you put on his leash!"
            puts " "
            puts "Luckily, a passerby manages to grab #{your_pet_name}."
            puts " "
            pet_love = pet_love - 1
            pet_health = pet_health - 1
        else
            puts " "
            # load 'runner.rb' #Cant make work
            puts "You enjoy a leisurely walk with #{your_pet_name}."
            puts " "
            puts "#{your_pet_name} had fun!"
            puts " "
            pet_health = pet_health + 1
            pet_love = pet_love +1
            pet_hunger = pet_hunger + 5
        end
    elsif owner_choice == "T"
        puts "     PET STATS"
        puts "\n"
        puts "Name: #{your_pet_name}"
        puts "Breed: #{your_breed}"
        puts "Health: #{pet_health}"
        puts "Hunger: #{pet_hunger}"
        puts "Love: #{pet_love}"
        puts "\n"
    elsif owner_choice == "P"
        pet_love = pet_love + 1
        pet_health = pet_health + 2
        puts "You picked up the poop."
        puts "Good job!"
    elsif owner_choice == "C"
        puts " "
        puts "It's time for a bath!"
        puts " "
        if pet_plays? == true || pet_dirty == false
            puts " "
            puts "#{your_pet_name} doesn't want a bath!"
            puts " "
            pet_love = pet_love - 1
        else
            puts " "
            puts "*RUB A DUB DUB*"
            puts " "
            pet_health = pet_health + 1
            pet_dirty = false
        end
    elsif owner_choice == "F"
        puts " "
        puts "Let's feed #{your_pet_name}."
        puts " "
        if pet_plays? == true || pet_hunger <= 15
            puts " "
            puts "#{your_pet_name} isn't hungry!"
            puts " "
            puts "#{your_pet_name} tipped their food on the floor!"
            puts " "
            pet_love = pet_love - 1
        else
            puts " "
            puts "*Chomp*"
            puts "                *Chomp*"
            puts "      *Chomp*"
            puts " "
            pet_hunger = pet_hunger - 30
        end
    elsif owner_choice == "S"
        pet_health = pet_health - 20
        pet_hunger = pet_hunger + 20
        pet_dirty = pet_dirty = true
        puts " "
        puts "Good Morning!"
        puts "It's a new day!"
        puts " "
    else 
        puts "What are you doing?"
    end

    puts " "


    if pet_love > 100
        puts " "
        puts "Wow! #{your_pet_name} really loves you!"
        puts " "
        puts " "
        puts " "
        puts "Congratulations! You're the number one pet owner!"
        puts "   .-=========-."
        puts "   \\\'-=======-'/"
        puts "   _|   .=.   |_ "
        puts "  ((|  {{1}}  |)) "
        puts "   \\\|   /|\\\   |/"
        puts "    \\\__ '`' __/ "
        puts "      _`) (`_ "
        puts "    _/_______\\\_"
        puts "   /___________\\\ "
        puts " "
        puts " "
        puts " "
    else
    end
    




end
if pet_health > 0 
else 
    puts "OH NO!!!!"
    puts "Your pet has died!"
    puts "Your pet's stats:"
    puts "Health: #{pet_health}"
    puts "Love: #{pet_love}"
    puts "\n"
end



