class HomeController < ApplicationController
  def index
  end
  def locations
    qparams = {:location => params[:one_teacher]}
    url = URI.parse('http://localhost/foursquare.php')
    url.query = URI.encode_www_form(qparams)
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    @div=res.body
  end
end
