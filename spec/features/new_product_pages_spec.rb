require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'visit product path, create new product' do
  it 'navigates from product path to create new' do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Product'
    fill_in 'Cost', :with => 25.0
    fill_in 'Origin', :with => 'Boston, MA'
    fill_in 'Brand', :with => 'RAD'
    select('Bottoms', :from => 'Style')
    fill_in 'Url', :with =>  "http://mindlessones.com/wp-content/uploads/2012/04/HermesMoebius04.jpg"
    click_on 'Create Product'
    expect(page).to have_content 'Product'
  end
end

DatabaseCleaner.clean
