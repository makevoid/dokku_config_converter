path = File.expand_path "../../", __FILE__

CONFIGS = "#{path}/configs.txt"
raise "Config file not found" unless File.exist? CONFIGS
configs = File.read CONFIGS

matches = []

configs.each_line do |line|
  match = line.match /^(\w+):\s+(.+)$/
  name, value = match[1], match[2]
  matches << "#{name}=#{value}"
end

puts "Parsed configs:"
puts
puts matches.join " "
puts

puts "exiting..."
