class Review < ActiveRecord::Base
  validates :author, :content, :rating, :presence => true
  belongs_to :product
end
