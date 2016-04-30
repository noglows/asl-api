require 'mechanize'
require 'pry'

url = "http://lifeprint.com/asl101/gifs-animated/"


mech = Mechanize.new
mech.get(url) do |page|
  page.links.each do |link|
    gif_link = mech.click(link)
    name = gif_link.filename
    begin
      gif_link.save "animations/#{name}"
    rescue
      binding.pry
    end
  end
end
