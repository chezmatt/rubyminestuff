class Blog < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :owner, dependent: :destroy
  validates :name, :description, presence: true
end
