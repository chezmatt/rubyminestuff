class Message < ApplicationRecord
  validates :title, presence: true
  validates :message, presence: true, length: { minimum: 7 }
  belongs_to :post
end



