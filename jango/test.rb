
require 'rubygems'
require 'mechanize'
require 'open-uri'

# agent = Mechanize.new
# agent.get("https://www.daraz.pk/phones")

# collection= link.search('section.pagination')


agent = Mechanize.new
page = agent.get('http://google.com/')
google_form = page.form('f')
google_form.q = 'ruby mechanize'
page = agent.submit(google_form)
pp page