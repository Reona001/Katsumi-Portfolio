class Post < ApplicationRecord
  validates :sectiontitle, :content, presence: true
  belongs_to :blogpost
  # has_many :blogpost, dependent: :destroy
  # attr_accessor :blogpost
end
