class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message_text
      t.belongs_to :member, index: true
      t.belongs_to :from_member

      t.timestamps null: false


    end
  end
end
