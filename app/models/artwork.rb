class Artwork < ApplicationRecord
  has_many :media_artworks
  has_many :media, through: :media_artworks
  has_many :transactions

  validates_presence_of :title
  validates_presence_of :height_in
  validates_presence_of :width_in

  def date_started
    self[:date_started] || self[:created_at]
  end
end
