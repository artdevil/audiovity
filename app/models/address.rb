class Address < ActiveRecord::Base
  belongs_to :user, :polymorphic => true
  attr_accessible  :country, :city, :mobile_phone
  validates :country, :city, :mobile_phone, :presence => true
  validates :mobile_phone, :numericality => { :only_integer => true }
end
