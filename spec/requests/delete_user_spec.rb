require "rails_helper"

RSpec.describe "Delete User", type: :request do
  before do
    @user = User.create( name: "Harry Potter",
                        email: "harry@test.com",
                        phone: "12345678901",
                        cpf: "12345678901")
  end
  context "Success" do
    it "should delete a inactive user" do
      delete "/users/#{@user.id}"

      expect(User.count).to eq(0)
    end

    it "should show a success message" do

      delete "/users/#{@user.id}"

      expect(flash[:success]).to be_present
    end
  end


  context "Failure" do
    it "should no delete a active user" do
      @user.activate

      delete "/users/#{@user.id}"

      expect(User.count).to eq(1)

    end

    it "should show a error  message" do
      @user.activate

      delete "/users/#{@user.id}"

      expect(flash[:notice]).to be_present
    end
  end
end

