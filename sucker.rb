require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://www.daraz.pk/phones/')

puts page.at('').text.strip