class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  scope :all_except, ->(user) { where.not(id: user) }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :projects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
