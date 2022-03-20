class Post < ApplicationRecord
  validates :sectiontitle, :content, :blogpost_id, presence: true
  has_one :blogpost, :through => :assignments
  # attr_accessor :blogpost
end
