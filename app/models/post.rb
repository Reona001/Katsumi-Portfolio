class Post < ApplicationRecord
  validates :sectiontitle, :content, presence: true
  belongs_to :blogpost
end
