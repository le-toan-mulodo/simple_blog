class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  
  default_scope order: 'posts.created_at DESC'
end
