class MemberPreference
  include ActiveModel::Model
  attr_accessor :minage, :maxage, :gender, :smoker, :drinker, :hobbies
end