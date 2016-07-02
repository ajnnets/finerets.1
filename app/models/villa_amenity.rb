class VillaAmenity < ActiveRecord::Base
  belongs_to :amenity
  belongs_to :villa
end
