class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :hobby_name
      t.integer :member_id

      t.timestamps null: false
    end
    add_index :hobbies, :member_id
  end
end
