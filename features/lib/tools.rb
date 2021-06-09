class Tools
  def self.us_currency(value)
    raise "#{value} is not US Currency!" unless value[0] == '$'
	raise "#{value} is not US Currency!" unless value[-3] == '.'
  end
  
  def self.us_currency_float(value)
   value[1...].gsub(',', '').to_f
  end
end