require 'rails_helper'

describe Product do

      before do # before running the test...
        @product = Product.create!(:name => "shoe")
        @user = User.create(:email => "test4@test4.com", :password => "test4444" )
        @product.comments.create!(:rating => 1, :user => @user, :body => "ok")
        @product.comments.create!(:rating => 3, :user => @user, :body => "good")
        @product.comments.create!(:rating => 5, :user => @user, :body => "great")
      end

      it 'returns the average rating of all comments' do
        expect(@product.average_rating).to eq 3
      end

      it "is not valid" do
        expect(Product.new(description: "Cool Bike!")).not_to be_valid
      end

end #end describe Product