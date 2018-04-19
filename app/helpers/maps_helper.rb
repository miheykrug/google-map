module MapsHelper

  def map_url(map)
    "https://www.google.com/maps/search/?api=1&query=#{map.latitude},#{map.longitude}"
  end

end
