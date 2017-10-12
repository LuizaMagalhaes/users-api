require "rails_helper"

RSpec.describe "Update Users", type: :request do
  before do
    @user = User.create( name: "Harry Potter",
                        email: "harry@test.com",
                        phone: "123456789",
                        cpf: "12345678901")
  end

  describe "PUT #update" do
    context "Success" do
      it "Should update the user" do

        put "/users/#{@user.id}", params: { :user => { :name => "Thiago Potter" } }

        last_user = User.last

        expect(last_user.name).to eq("Thiago Potter")
      end
    end

    context "Failure" do
      it "should not update user" do

        put "/users/#{@user.id}", params: { :user => { :name => "" } }

        last_user = User.last

        expect(last_user.name).to eq("Harry Potter")
      end
    end
  end
end
