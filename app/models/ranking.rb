class Ranking < ActiveRecord::Base
    def ranking_save  
      @ranking = Array.new
    #10페이지를 뽑고 싶다.  주소창에 페이지 번호 복사 해서.
	    doc = Nokogiri::HTML(open("http://www.podbbang.com/ch/14046"))
	    doc.css(".rank-cate-n//span").each do |x|
	    #css 형태로 뽑아오겠다. //a a태그만 뽑고 싶다.
		    r = Ranking.new
		    r.name = x.inner_text
		    r.save
	    #.inner_text : a태그 안에서 text만 뽑고 싶다.
	      end
    end
end
