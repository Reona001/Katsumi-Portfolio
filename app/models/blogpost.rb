class Blogpost < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :user
  has_many :posts, dependent: :destroy
end
