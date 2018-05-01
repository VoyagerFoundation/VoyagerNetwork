class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :website, format: { with: URI::regexp, message: 'You provided invalid URL' }

  enum status: [:draft, :published, :archived]
  belongs_to :user
end
