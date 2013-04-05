class Single < ActiveRecord::Base
  attr_accessible :song, :artist_id
  validates :song, :artist_id, :presence => true

  has_many :tracks
  belongs_to :artist



end
