class Project < ApplicationRecord
  validates :title, presence: true
  validates :created, presence: true
  validates :created_by, presence: true
  validates :stack_used, presence: true
  validates :url, presence: true
  validates :url, presence: true
  validates :git_repo_url, presence: true
  belongs_to :user
end
