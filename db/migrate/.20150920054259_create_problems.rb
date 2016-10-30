class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.references :solvable, polymorphic: true, index: true
      t.integer :member_id, null: false
      t.boolean :has_been_solved, default: false, null: false
      t.timestamps null: false
    end

    add_index :problems, :member_id

    create_table :missing_names do |t|
      t.timestamps null: false
    end

    create_table :missing_photos do |t|
      t.timestamps null: false
    end
  end
end
