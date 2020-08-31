class Artwork < ApplicationRecord
  has_many :media_artworks
  has_many :media, through: :media_artworks
  has_many :transactions

  validates_presence_of :title
  validates_presence_of :height_in
  validates_presence_of :width_in

  validate :must_be_created_with_transacation,
    :must_have_one_genesis_transaction
 
  def must_be_created_with_transacation
    if transactions.count < 1
      errors.add(:transactions, "must have genesis transaction")
    end
  end
 
  def must_have_one_genesis_transaction
    if get_genesis = nil
      errors.add(:transactions, "must have at least one genesis transaction")
    end
  end

  def date_started
    self[:date_started] || self[:created_at]
  end

  def get_genesis
    self.transactions.order_by(:created_at).first
  end
end
