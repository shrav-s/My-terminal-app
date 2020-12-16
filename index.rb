require_relative('method')
require('colorize')
# if ARGV.length > 0
#     flag, *rest = ARGV
#     ARGV.clear
#     case flag
#     when '-help'
#         puts "Read the readme"
#     when '-info'
#         puts "This program is using: #{RUBY_VERSION}. The program requires colorize and ascii art gems."
#     else
#         puts "Invalid argument"
#     end
#     exit
# end

is_exit = welcome

puts 'Bye...' if is_exit
