class Problem < ApplicationRecord
  has_many :problem_project
  has_many :projects, through: :problem_project
end
