require 'faker'

# name_count, second_arg = ARGV
name_count = ARGV.shift

name_count ||= 150

output = File.join('sample', 'names.txt')

open(output, 'w') { |f|
    puts "generating #{name_count} names to #{output}..."
    [*0..name_count].each do |num|
        f.puts Faker::Name.name
    end
    puts "done."
}