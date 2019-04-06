class CreateProblemProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :problem_projects do |t|
      t.references :problem, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
