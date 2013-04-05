class Band < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true

  has_many :band_memberships
  has_many :artists, :through => :band_memberships
  has_many :tracks
  has_many :albums
end
