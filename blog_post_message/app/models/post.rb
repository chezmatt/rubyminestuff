class Post < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :blog
  validates :title, presence: true, length: {minimum: 7}
  validates :content, presence: true
end




Blog.all.each {|i| Post.create(title: 'A sweet title', content:'super sweet blog', blog_id:i)}