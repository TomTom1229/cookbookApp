class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :avatar
  attr_readonly :admin
  validates :name, presence: true, uniqueness: true

  has_secure_password
  has_attached_file :avatar, :default_url => "/images/:style/missing.png" 
end
