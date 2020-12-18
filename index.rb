require_relative('method')
require('colorize')

if ARGV.length > 0
    flag, *rest = ARGV
    ARGV.clear
    case flag
    when '-help'
        puts "Requiremments and dependencies of the game

- Intsall Ruby here - https://www.ruby-lang.org/en/documentation/installation/ and follow the installation instructions.

- Run the following command line instruction to install bundler gem:

' gem install bundler '
 

- Clone the files from the repository using the following command line instruction:

' git clone https://github.com/shrav-s/My-terminal-app '

- Navigate to the src folder using following command

' cd src '

- Choose to run the execuatble file from the souce folder to install all required gems.

' ./run.sh ' "
    when '-info'
        puts "This program is using: #{RUBY_VERSION}. The program requires gems such as colorize, json, rspec, bundler, and artii."
    else
        puts "Invalid argument"
    end
    exit
end

is_exit = welcome

puts 'See you next time.Bye...'.yellow.on_black if is_exit
