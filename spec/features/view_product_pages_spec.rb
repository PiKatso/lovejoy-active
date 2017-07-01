require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'visit product path, route to product details' do
  it 'navigates from product path to sentence details' do
    product1 = Product.create(:name => 'product', :cost => 25.0, :origin => "Boston, MA", :brand => "RAD", :style => "Bottoms", :url => "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg")
    visit root_path
    click_link 'SHOP'
    click_link 'product'
    expect(page).to have_content "review this item"
  end
end

DatabaseCleaner.clean
