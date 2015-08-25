class CreateContactedMembers < ActiveRecord::Migration
  def change
    create_table :contacted_members do |t|
      t.integer :member

      t.timestamps null: false
    end
    add_index :contacted_members, :member
  end
end
