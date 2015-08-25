class AddUserRefToMemberInfo < ActiveRecord::Migration
  def change
    add_reference :member_infos, :member, index: true, foreign_key: true
  end
end
