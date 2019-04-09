class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :website, format: { with: URI::regexp, message: 'You provided invalid URL' }

  belongs_to :user
  has_many :problem_project
  has_many :problems, through: :problem_project

  enum status: [:draft, :published, :archived]
end
