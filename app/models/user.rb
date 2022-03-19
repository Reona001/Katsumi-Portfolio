class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  scope :all_except, ->(user) { where.not(id: user) }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :projects
  has_many :blogposts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # def gravatar_url
  #   gravatar_id = Digest::MD5::hexdigest(email).downcase
  #   "https://gravatar.com/avatar/#{gravatar_id}.png"
  # end
end
