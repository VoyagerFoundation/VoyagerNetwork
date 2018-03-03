class AddUserFields < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :nickname
      t.string :avatar_url
    end
  end
end
