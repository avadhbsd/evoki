class Location < ActiveRecord::Base
  belongs_to :brand
  belongs_to :user
  has_many :accesskeys
end
