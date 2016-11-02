# # # #require 'mechanize'

# # # #agent = Mechanize.new

# # # #page = agent.get "http://google.com"

# # # #puts page.title

# # # #puts page.uri



# # # require 'mechanize'

# # # mechanize = Mechanize.new

# # # page = mechanize.get('http://www.bbc.co.uk/news')

# # # puts page.at('.osprey h3, .buzzard h3, .albatross h3').text./strip


# # require 'mechanize'

# # mechanize = Mechanize.new

# # page = mechanize.get('http://www.bbc.com/news/world-middle-east-37744702')

# # puts page.at('.story-body__introduction p').text.strip
# require 'rubygems'
# require 'mechanize'

# a = Mechanize.new { |agent|
#   agent.user_agent_alias = 'Mac Safari'
# }

# a.get('http://google.com/') do |page|
#   search_result = page.form_with(:name => 'f') do |search|
#     search.q = 'Hello world'
#   end.submit

#   search_result.links.each do |link|
#     puts link.text
#   end
# end

require 'mechanize'
require 'json'


agent = Mechanize.new
page = agent.get("https://www.daraz.pk/phones/")


collection=page.search('div.sku')

# aFile = File.new("output.txt", "w")

collection.each do |element|
 

	#collection2=element.search('a.link')	

		#collection2.each do |element2|
		temp =  ['href']
		puts temp
		#collection2 = element.search('h2.title')
	    	puts element ['ltr']

	     # collection3.each do |element3|
	     # 	puts element3 ['']
	     # product = {:make => "bmw", :year => "2003"}
	     # product.to_json

		#end
	# puts element.text.strip
	# aFile.puts element.text.strip

end

# aFile.close


