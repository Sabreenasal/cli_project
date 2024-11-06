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
      puts "See ya later!"
    break 
  else
    puts "Invalid option. Choose another option."
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
  puts "\n"
  puts " What is the oufit you want to wear today? Example: blue top"
  outfits = gets.chomp
  outfit = @outfits.find { |outfit| if outfit.to_s.downcase == outfits
  @outfits.delete(outfit)
end
}
  puts "\n"
  puts "You look amazing!"
  
end