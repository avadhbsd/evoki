class Customer < ActiveRecord::Base
  has_and_belongs_to_many :locations
  validates_formatting_of :email, using: :email
end
