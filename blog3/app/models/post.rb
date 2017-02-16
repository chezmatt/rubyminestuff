# class Post < ApplicationRecord
#   has_many :messages, dependent: :destroy
#   belongs_to :blog
#   belongs_to :user
#   validates :title, presence: true, length: {minimum: 7}
#   validates :content, presence: true
# end

class Post < ActiveRecord::Base
  has_many :messages
  belongs_to :blog
  belongs_to :user

  validates :content, presence: true
  validates :title, presence: true
end
