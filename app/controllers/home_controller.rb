class HomeController < ApplicationController
  def index
  end
  def locations
    url = URI.parse('http://www.example.com/index.html')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
        http.request(req)
    }
    @div=res.body
  end
end
