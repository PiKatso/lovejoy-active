class Review < ActiveRecord::Base
  validates :author, :content, :rating, :presence => true
  validates_length_of :content, maximum: 250, message: "we appreciate your feedback, butcharacter maximum allowed has been reached"
  validates_length_of :content, minimum: 50, message: "is too short (minimum is 50 characters)"
  validates_numericality_of :rating, on: :create
  validates_numericality_of :rating, :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0

  belongs_to :product
end
