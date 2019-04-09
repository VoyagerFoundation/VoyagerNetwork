class Hypothesis < ApplicationRecord
  belongs_to :problem

  enum status: [:draft, :published, :archived]
end
