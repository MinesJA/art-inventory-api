class Transaction < ApplicationRecord
  has_one :next, class_name: "Transaction", foreign_key: "next_id"
  # belongs_to :next, class_name: "Transaction"

  has_one :prev, class_name: "Transaction", foreign_key: "prev_id"
  # belongs_to :prev, class_name: "Transaction"

  belongs_to :artwork
  # belongs_to :supplier, :polymorphic => true
  
  # Transaction will only have a recipient, the supplier is assumed to be the recipient
  # from the last transaction 
  belongs_to :recipient, :polymorphic => true

  belongs_to :location
  belongs_to :transferable, :polymorphic => true
end
