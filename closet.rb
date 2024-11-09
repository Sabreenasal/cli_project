require_relative "outfits"

class Closet
  def initialize 
    @outfits = []
  end


 def run
  loop do
   puts "\n"
   puts "Welcome to your closet!"
   puts "1. List all garments"
   puts "2. Take out a garment"
   puts "3. Add a garment"
   puts "4. Exit"
   print "Choose an option:"
   puts "\n"
   option = gets.chomp.to_i

  
   case option 
    when 1
      list_garments
    when 2
      remove_garment
    when 3
      add_garment
    when 4 
      puts "\n"
      puts "See ya later!"
    exit 
    else
    puts "\n"
    puts "Invalid option. Please choose another option."
  run
  end 
  end
end
end

private

def list_garments
   puts "\n"
   puts "Garments in the closet!:"
   puts "\n"
   @outfits.each do |outfits|
   puts outfits
  end
  if
   @outfits.empty? 
   puts "The closet is empty. Please add a garment or exit."
  end

end

def add_garment
  puts "\n"
  puts "What color is the garment?"
  color = gets.chomp
  puts "\n"
  puts "What kind of garment is this?"
  garment = gets.chomp
  @outfits << Outfits.new(color,garment)
  puts "\n"
  puts "Garment has been added!"
end

def remove_garment
  if
    @outfits.empty? 
    puts "The closet is empty. Please add a garment or exit."
    run
  end
  puts "\n"
  puts " What is the oufit you want to wear today? Example: blue top"
  outfits = gets.chomp
  outfit = @outfits.find { |outfit| if outfit.to_s.downcase == outfits
  @outfits.delete(outfit)
  end}
if outfits != outfit
  puts "\n"
  puts "That isn't in the closet. Please type something from the list "
 remove_garment
end
  puts "\n"
  puts "You look amazing!"
end
