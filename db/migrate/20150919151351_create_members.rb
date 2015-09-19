class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :middle_name
      t.string :photo
      t.string :title
      t.string :riding
      t.timestamps null: false
    end
  end
end
