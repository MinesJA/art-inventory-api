class Transaction < ApplicationRecord
  has_one :next, class_name: "Transaction", foreign_key: "next_id"
  # belongs_to :next, class_name: "Transaction"

  has_one :prev, class_name: "Transaction", foreign_key: "prev_id"
  # belongs_to :prev, class_name: "Transaction"

  belongs_to :artwork
  belongs_to :supplier, :polymorphic => true
  belongs_to :recipient, :polymorphic => true

  belongs_to :location
  # belongs_to :transferable, :polymorphic => true

  def Transaction.create_genesis(artwork:, creator:, location:)
    self.create(artwork: artwork, supplier: creator, recipient: creator, location: location)
  end

  def is_genesis?
    prev == nil
  end

end
