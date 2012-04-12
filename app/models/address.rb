class Address < ActiveRecord::Base
  belongs_to :user, :polymorphic => true
  attr_accessible :line_1, :line_2, :country, :city, :mobile_phone
  validates :line_1, :country, :city, :mobile_phone, :presence => true
  validates :mobile_phone, :numericality => { :only_integer => true }
end
