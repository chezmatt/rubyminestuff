# class Blog < ApplicationRecord
#   has_many :posts, dependent: :destroy
#   has_many :owner, dependent: :destroy
#   validates :name, :description, presence: true
# end

class Blog < ActiveRecord::Base
  has_many :owners
  has_many :posts
  has_many :users, through: :owners

  validates :name, presence: true
  validates :description, presence: true
end
