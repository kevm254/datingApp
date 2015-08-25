class Member < ActiveRecord::Base
  has_attached_file :avatar
  #Validate content type
  validates_attachment_content_type :avatar, :content_type => /\Aimage/
  #validate filename
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]

  has_one :member_info, autosave: true
  has_many :messages
  has_many :contacted_members
  has_many :hobbies
  belongs_to :user

  validates :first_name, :last_name, :description, :presence => true,
    :uniqueness => { :case_sensitive => true }
end
