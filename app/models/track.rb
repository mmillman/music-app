class Track < ActiveRecord::Base
  attr_accessible :album_id, :single_id, :album_position, :bonus_regular

  belongs_to :album
  has_one :song, class_name: Single
end
