class Review < ActiveRecord::Base
  validates :author, :content, :rating, :presence => true

  validates_length_of :content, maximum: 250, message: "we appreciate your feedback, butcharacter maximum allowed has been reached"

  validates_length_of :content, minimum: 50, message: "is too short (minimum is 50 characters)"

  validates_numericality_of :rating, on: :create

  validates_numericality_of :rating, :less_than_or_equal_to => 5, message: "must be less than or equal to 5"

  validates_numericality_of :rating, :greater_than => 0, message: "must be greater than 0"

  belongs_to :product
end
