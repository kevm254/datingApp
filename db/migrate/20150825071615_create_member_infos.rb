class CreateMemberInfos < ActiveRecord::Migration
  def change
    create_table :member_infos do |t|
      t.integer :age
      t.string :gender
      t.boolean :smoker
      t.boolean :drinker
      t.integer :children
      t.string :relationship_status

      t.timestamps null: false
    end
  end
end
