
#parent class

class Pet

    def pet_chooser

        pet_types = ["(D)og", "(C)at"]

    loop do

        puts "What type of pet would you like?"
        puts " "
        puts pet_types.join("\n")
        
        your_pet_type = gets.chomp.capitalize
        
        your_breed = []
        
        dog_breed = ["German Shepherd", "Jack Russell", "Corgi", "Great Dane", "Dalmatian", "Rottweiler", "Labrador", "Poodle"]
        
        cat_breed = ["Siamese", "Ragdoll", "Sphinx", "Blue Russian"]
        
            if your_pet_type == 'D'
                your_pet_breed = "Dog"
                Dog.new.image
                your_breed.push(dog_breed.sample)
                break
            elsif your_pet_type == 'C'
                your_pet_type = "Cat"
                Cat.new.image
                your_breed.push(cat_breed.sample)
                break
            else
                puts " "
                puts "We don't have any of those."
                puts " "
            end
        end
        
    end
        



end