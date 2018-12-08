require 'faker'

company_count = ARGV.shift

company_count ||= 150

output = File.join('sample', 'companies.txt')

open(output, 'w') { |f|
    puts "generating #{company_count} companies to #{output}..."
    [*0..company_count].each do |num|
        f.puts Faker::Company.name
    end
    puts "done."
}