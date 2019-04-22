class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :website, format: { with: URI::regexp, message: 'You provided invalid URL' }

  enum status: [:draft, :published, :archived]
  belongs_to :user
  has_one_attached :image

  def self.get_random_project
    Project.first
  end

end
