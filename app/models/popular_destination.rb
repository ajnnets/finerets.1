class PopularDestination < ActiveRecord::Base
  belongs_to :area
  belongs_to :region
end
