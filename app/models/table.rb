class Table < ActiveRecord::Base
  has_many :reservations, :dependent => :destroy
  has_many :users, :through => :reservations
  accepts_nested_attributes_for :reservations, :reject_if => lambda {|a| a[:user_id].blank?}, :allow_destroy => true
end
