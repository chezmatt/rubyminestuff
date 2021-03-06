class Message < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :message, presence: true, length: {minimum: 15}
  validates :author, presence: true
end