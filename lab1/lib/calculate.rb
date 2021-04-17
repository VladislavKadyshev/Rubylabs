load 'converter.rb'

class Calculate
  def self.calculate
    reg_digit = '^[+-]?([1-9]\d*|0)(\.\d+)?$'
    temperature = Input.set_temperature
    return 'Invalid temperature' unless temperature.to_s.match(reg_digit)

    scale_first = Input.set_scale
    return "Invalid scale '#{scale_first}' " unless %w[C F K].include? scale_first

    scale_second = Input.set_scale
    return "Invalid scale '#{scale_second}' " unless %w[C F K].include? scale_second

    Converter.convert_to_scale(temperature, scale_first, scale_second)
  end
end
