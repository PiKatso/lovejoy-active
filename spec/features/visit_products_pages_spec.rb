require 'rails_helper'
# require 'database_cleaner'

# DatabaseCleaner.strategy = :truncation

describe 'visit root route to product path' do
  it 'navigates from root to product path' do
    product1 = Product.create(:name => 'product', :cost => 25.0, :origin => "Boston, MA", :brand => "RAD", :style => "bottoms", :url => "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg")
    visit root_path
    click_link 'Shop All'
    expect(page).to have_content 'Products'
  end
end
# DatabaseCleaner.clean
