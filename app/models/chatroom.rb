class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :users
  validates_uniqueness_of :name
  scope :public_rooms, -> { where(is_private: false) }
end
