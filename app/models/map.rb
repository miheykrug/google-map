class Map

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :latitude, :longitude

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value.to_i)
    end
  end

  def persisted?
    false
  end

end