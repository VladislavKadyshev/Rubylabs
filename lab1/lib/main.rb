load 'calculate.rb'

class Input
  def self.set_temperature
    puts 'Enter temperature '
    @temperature = gets.chomp!
  end

  def self.set_scale
    puts 'Select a scale (С, K, F) '
    @scale = gets.chomp!
  end
end

loop do
  puts Calculate.calculate
end
