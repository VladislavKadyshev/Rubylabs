class Converter
  def self.cels_to_scale(scale_second, temperature)
    case scale_second
    when 'F'
      (temperature.to_f * 1.8 + 32)
    else
      (temperature.to_f + 273.15)
    end
  end

  def self.fars_to_scale(scale_second, temperature)
    case scale_second
    when 'C'
      (temperature.to_f - 32) / 1.8
    else
      (temperature.to_f - 32) / 1.8 + 273.15
    end
  end

  def self.kelvins_to_scale(scale_second, temperature)
    case scale_second
    when 'C'
      temperature.to_f - 273.15
    else
      1.8 * (temperature.to_f - 273.15) + 32
    end
  end

  def self.convert_to_scale(temperature, scale_first, scale_second)
    return temperature.to_f if scale_first == scale_second

    case scale_first
    when 'C'
      convertation = cels_to_scale(scale_second, temperature)
    when 'K'
      convertation = kelvins_to_scale(scale_second, temperature)
    when 'F'
      convertation = fars_to_scale(scale_second, temperature)
    end
    convertation
  end
end
