class Album < ActiveRecord::Base
  attr_accessible :title, :status, :band_id
  has_many :tracks
  belongs_to :band

end
