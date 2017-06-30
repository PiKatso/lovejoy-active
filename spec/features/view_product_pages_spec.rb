# require 'rails_helper'
#
# describe 'visit product path, route to product details' do
#   it 'navigates from product path to sentence details' do
#     product1 = Product.create(:name => 'product', :cost => 25.0, :origin => "Boston, MA", :brand => "RAD", :style => "bottoms")
#     review1 = product1.reviews.create(:author => 'Maddie Sparkle', :content => 'The fit is perfect', :rating => 4)
#     visit products_path
#     click_link 'product1'
#     click_link review.content
#     expect(page).to have_content sentence.author
#   end
# end
