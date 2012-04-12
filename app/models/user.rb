class User < ActiveRecord::Base
  has_one :address, :as => :addressable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :address_attributes, 
                  :first_name, :last_name, :birthday, :time_zoned, :profile_address, :language_selection, :roles, :profile_picture
  validates :first_name, :last_name, :birthday, :time_zoned, :presence => true
  accepts_nested_attributes_for :address
end
