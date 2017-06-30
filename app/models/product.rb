class Product < ActiveRecord::Base
  validates :name, :cost, :origin, :brand, :presence => true
  has_many :reviews
end
