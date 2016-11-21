class Guard < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :supervisor

  geocoded_by :current_sign_in_ip
  before_validation :update_lat_long

  def get_weather_info
    return unless latitude && longitude
    url = URI.parse("http://api.openweathermap.org/data/2.5/weather?lat=#{latitude}&lon=#{longitude}&APPID=#{Rails.application.secrets.weather_api_key}")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    res.body
  end

  def update_lat_long
    coordinates = geocode
    if geocode
      self.latitude = coordinates.first
      self.longitude = coordinates.last
    else
      self.latitude = nil
      self.longitude = nil
    end
  end
end
