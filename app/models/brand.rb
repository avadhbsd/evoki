class Brand < ActiveRecord::Base
  belongs_to :user
  has_many :locations
  has_and_belongs_to_many :customers
end
