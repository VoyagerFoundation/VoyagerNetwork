class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :website
      t.date :start_date
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
