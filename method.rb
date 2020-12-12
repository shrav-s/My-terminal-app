def user_name
    puts "Enter your name"
    name = gets.chomp.capitalize
    system "clear"
    puts " Hi #{name}"
end
