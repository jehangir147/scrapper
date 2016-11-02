require 'mechanize'
require 'json'


agent = Mechanize.new						# making a new instance of Mechanize
page = agent.get("https://www.daraz.pk/")
cat_ul = page.search('span.nav-subTxt')   #jitni b search aaye ga wo is mn save huta rhy ga

cat_ul.each do |x|
	puts x.text
end