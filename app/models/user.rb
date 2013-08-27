class User < ActiveRecord::Base
  
 include ActiveModel::ForbiddenAttributesProtection
   
   
  #association among models
  has_many :posts, dependent: :destroy
  belongs_to :role
  has_many :comments, dependent: :destroy
  has_secure_password

  #validation rule for model
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

  validates :password, presence: true, length: {minimum: 6}, on: :create
  validates :password_confirmation, presence: true, on: :create

  #hook model's cycle
  before_save {|user| user.email = user.email.downcase}
  before_save :create_remember_token

  #added functions in model
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
