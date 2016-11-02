require 'mechanize'
require 'json'


agent = Mechanize.new						# making a new instance of Mechanize
page = agent.get("https://www.daraz.pk/")   # this is to open the home page of the site

link = page.link_with(text: 'Phones')		# linking the page to a new page from the site



collection= link.search('div.sku')			# searches the tag 'div' with class 'sku'

# aFile = File.new("output.txt", "w")

collection.each do |element|				# loop until last element in the collection
  collection2=element.search('a.link')	
    collection2.each do |element2|
		 puts "======>>>>>>>>>>>"
		 brand=element2.search('span.brand').text.strip		# this will pick the text from tag.class
		 name=element2.search('span.name').text.strip
		 price=element2.search('span.price').text.strip
		 puts "Brand: #{brand}."
		 puts "Name: #{name}."
		 puts "Price: #{price}."
	 end
end



