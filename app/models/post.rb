class Post < ApplicationRecord
  validates :sectiontitle, :content, :blogpost_id, presence: true
  has_many :blogpost, dependent: :destroy
  # attr_accessor :blogpost
end
