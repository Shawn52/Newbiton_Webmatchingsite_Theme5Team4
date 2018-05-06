require 'nokogiri'
require 'open-uri'
class CrawlerController < ApplicationController
    def index
        url = "https://www.tripadvisor.co.kr/Attractions-g294196-Activities-South_Korea.html"
        doc = Nokogiri::HTML(open(url))
        @rec_place = []
        @rec_pic = []
        
        doc.css('div.item.name').each do |x|
            @rec_place.push(x.text)
        #doc.css('div.centering_wrapper').each do |x|
        #    x = x.to_s.split('>')[1] + '>'
        #    @rec_pic.push(x)
        # end
        end
    end
end
