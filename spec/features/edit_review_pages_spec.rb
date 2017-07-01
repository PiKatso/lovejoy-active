require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'visit product path, edit review' do
  it 'navigates from product path to edit review' do
    product1 = Product.create(:name => 'product', :cost => 25.0, :origin => "Boston, MA", :brand => "RAD", :style => "Bottoms", :url => "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg")
    review1 = product1.reviews.create(:author => 'Maddie Sparkle', :content => 'The fit is perfect, so very very perfect. I love it', :rating => 4)
    visit products_path
    click_link 'product'
    click_link 'Edit'
    fill_in 'Author', :with => 'Michelle Shimmy'
    fill_in 'Content', :with => 'new content, review of product, that was essentially non existant'
    fill_in 'Rating', :with => '3'
    click_on 'Update Review'
    expect(page).to have_content product1.name
  end
end

DatabaseCleaner.clean
