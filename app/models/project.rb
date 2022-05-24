class Project < ApplicationRecord
  has_one_attached :photo

  validates :title, presence: true
  validates :created, presence: true
  validates :created_by, presence: true
  validates :stack_used, presence: true
  validates :url, presence: true
  validates :url, presence: true
  validates :git_repo_url, presence: true
  # validates :photo, presence: true
  belongs_to :user
end
