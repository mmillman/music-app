class Artist < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :band_ids
  validates :first_name, :last_name, :presence => true

  has_many :band_memberships
  has_many :bands, :through => :band_memberships
  has_many :singles

  def full_name
    "#{first_name} #{last_name}"
  end
end
