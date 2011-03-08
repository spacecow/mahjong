class Table < ActiveRecord::Base
  has_many :reservations, :dependent => :destroy
  has_many :users, :through => :reservations
  accepts_nested_attributes_for :reservations
end
