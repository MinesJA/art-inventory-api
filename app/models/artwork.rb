class Artwork < ApplicationRecord
  belongs_to :artist

  validates_presence_of :title
  validates_presence_of :height_in
  validates_presence_of :width_in

  def started_at
    self[:started_at] || self[:created_at]
  end
end
