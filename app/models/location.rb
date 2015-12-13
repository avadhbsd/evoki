class Location < ActiveRecord::Base
  belongs_to :brand
  belongs_to :user
  has_many :accesskeys
  has_and_belongs_to_many :customers
end
