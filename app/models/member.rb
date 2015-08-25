class Member < ActiveRecord::Base
  has_attached_file :avatar
  #Validate content type
  validates_attachment_content_type :avatar, :content_type => /\Aimage/
  #validate filename
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
end



  validates :first_name, :last_name, :description, :presence => true,
    :uniqueness => { :cas_sensitive => true }
end
