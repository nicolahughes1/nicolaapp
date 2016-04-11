require 'rails_helper'

describe Product do

      context "when the product has comments" do
      before do 
        @product = Product.create!(name: "race shoe")
        @user = User.create!(first_name: "Test", last_name: "Four", email: "test4@test.com", password: "test4444")
        @product.comments.create!(rating: 1, user: @user, body: "Ok")
        @product.comments.create!(rating: 3, user: @user, body: "Good")
        @product.comments.create!(rating: 5, user: @user, body: "Great!")
      end

      it "returns average rating of all comments" do
        expect(@product.average_rating).to eq 3
      end

      it "returns how many comments a product has received" do
        expect(@product.total_rating).to eq 3
      end

   it "is not a valid product" do
      expect(@product).not_to be_valid
    end
  end

end