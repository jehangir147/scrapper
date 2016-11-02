require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://en.wikipedia.org/wiki/Main_Page')

form = page.forms.first

form['q'] = 'bigdata'

page = form.submit

page.search('#toctitle div').each do |h2|
  puts h2.text.strip
end