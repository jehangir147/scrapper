require 'mechanize'
require 'json'


agent = Mechanize.new
page = agent.get("https://www.daraz.pk/phones/")


collection=page.search('div.sku')

# aFile = File.new("output.txt", "w")

collection.each do |element|
  collection2=element.search('a.link')	
    collection2.each do |element2|
		 puts "======>>>>>>>>>>>"
		 brand=element2.search('span.brand').text.strip
		 name=element2.search('span.name').text.strip
		 price=element2.search('span.price').text.strip
		 puts "Brand: #{brand}."
		 puts "Name: #{name}."
		 puts "Price: #{price}."
	 end
end

