class CreateHypotheses < ActiveRecord::Migration[5.1]
  def change
    create_table :hypotheses do |t|
      t.string :hypothesis
      t.integer :type
      t.integer :validity
      t.references :problem, foreign_key: true

      t.timestamps
    end
  end
end
