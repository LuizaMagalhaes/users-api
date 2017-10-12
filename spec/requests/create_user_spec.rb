require "rails_helper"

RSpec.describe "Create user", type: :request do
  context "Success" do
    it "should create a user" do
      user_params = { user: { name: "Harry Potter",
                              email: "harry@test.com",
                              phone: "12345678901",
                              cpf: "12345678901" } }

      post "/users", params: user_params

      expect(User.count).to eq(1)
    end

    it "initial status should be inactive" do
      user_params = { user: { name: "Harry Potter",
                              email: "harry@test.com",
                              phone: "12345678901",
                              cpf: "12345678901" } }

      post "/users", params: user_params

      last_user = User.last
      expect(last_user.status).to eq("inactive")
    end
  end

  context "Failure" do
    it "should not create a user without all params" do
      user_params = { user: { name: "",
                              email: "harry@test.com",
                              phone: "12345678901",
                              cpf: "12345678901" } }

      post "/users", params: user_params

      expect(User.count).to eq(0)
    end
  end
end

