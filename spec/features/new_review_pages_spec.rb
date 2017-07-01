require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'visit product path, route to product details' do
  it 'navigates from product path to sentence details' do
    product1 = Product.create(:name => 'product', :cost => 25.0, :origin => "Boston, MA", :brand => "RAD", :style => "Bottoms", :url => "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg")
    visit root_path
    click_link 'SHOP'
    click_link 'product'
    click_link 'review this item'
    fill_in 'Author', :with => 'Maddie Sparkle'
    fill_in 'Content', :with => 'The fit is perfect, so very very perfect. I love it'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content product1.name
  end
end

DatabaseCleaner.clean
