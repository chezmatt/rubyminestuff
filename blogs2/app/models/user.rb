class User < ApplicationRecord
  has_many :user, dependent: :destroy
  has_many :message, dependent: :destroy
  has_many :posts, dependent: :destroy
  validate :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
