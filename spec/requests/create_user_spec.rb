require "rails_helper"

RSpec.describe "Create user", type: :request do
  context "Success" do
    it "should create a user" do
      user_params = { user: { name: "Harry Potter",
                              email: "harry@test.com",
                              phone: "123456789",
                              cpf: "12345678901"}}

      post "/users", params: user_params

      expect(User.count).to eq(1)
    end

    it "should be inactive" do
    end
  end

  context "Failure" do
    it "should not create a user" do
    end
  end
end

