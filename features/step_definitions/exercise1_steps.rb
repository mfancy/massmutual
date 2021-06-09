require_relative '../lib/web_driver_wrapper'
require_relative '../lib/tools'

Given 'I have gotten to page {string}' do | url |
  $page = Exercse1.new url
end

Then 'I verify right count of values' do
  (1..5).each do |idx|
    label = $page.send "label#{idx}"
	value = $page.send "value#{idx}"
	puts "'#{label}' => '#{value}'"
  end
end
	
Then 'I verify values are greater than zero' do
  (1..6).each do |idx|
	next if idx == 3
	
	value = $page.send "value#{idx}"
	puts Tools.us_currency_float(value)
	raise "#{value} is less then or equal to zero" if Tools.us_currency_float(value) <= 0
  end
  tvalue = $page.value_total
  raise "#{tvalue} is less then or equal to zero" if Tools.us_currency_float(tvalue) <= 0
end
  
Then 'I verify values in US currency' do
  (1..6).each do |idx|
	next if idx == 3
	
	value = $page.send "value#{idx}"
	Tools.us_currency value
  end
  Tools.us_currency $page.value_total
end
	
Then 'I verify values total math is correct' do
  my_total = 0
  (1..6).each do |idx|
	next if idx == 3
	
	value = $page.send "value#{idx}"
	my_total += Tools.us_currency_float value
  end
  act_total = Tools.us_currency_float $page.value_total
  raise "Calculated total: #{my_total} doesn't match #{act_total}" unless my_total == act_total
end
