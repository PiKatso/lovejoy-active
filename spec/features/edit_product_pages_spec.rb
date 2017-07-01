require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'visit product path, create new product' do
  it 'navigates from product path to create new' do
    product1 = Product.create(:name => 'product', :cost => 25.0, :origin => "Boston, MA", :brand => "RAD", :style => "Bottoms", :url => "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg")
    visit products_path
    click_link 'product'
    click_link 'Edit Product'
    fill_in 'Name', :with => 'Changing Product'
    fill_in 'Cost', :with => 50.0
    fill_in 'Origin', :with => 'Boston, MA'
    fill_in 'Brand', :with => 'RAD'
    select('Bottoms', :from => 'Style')
    fill_in 'Url', :with =>  "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg"
    click_on 'Update Product'
    expect(page).to have_content 'Changing Product'
  end
end

DatabaseCleaner.clean
