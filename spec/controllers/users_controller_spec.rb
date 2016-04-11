require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    user1 = FactoryGirl.create(:user)
    # @user = User.create!(email: "test5@test5.com", password: "test5555")
    user2 = User.create!(email: "test6@test6.com", password: "test6666")
  end

  describe "GET #show" do
     context "User 1 is logged in" do
      before do
        sign_in @user1

     end

      it "loads the correct details of User 1" do
         get :show, id: @user1.id
         expect(response.status).to eq 200
         expect(assigns(:user)).to eq @user1
       end

      it "doesn't load user details of Unser 2" do
         get :show, id: @user2.id
         expect(response.status).to eq 302
         expect(response).to redirect_to(root_path)
       end
     end

     context "No user is logged in" do
       it "redirects to login" do
         get :show, id: @user1.id
         expect(response).to redirect_to(root_path)
       end
     end
  end

end