require "rails_helper"

RSpec.describe "List users", type: :request do
  context "When have users" do
    before do
      @user1 = User.create(name: "Harry Potter",
                           email: "harry@test.com",
                           phone: "12345678901",
                           cpf: "12345678901")

      @user2 = User.create(name: "Hermione Granger",
                           email: "mione123@test.com",
                           phone: "98765432190",
                           cpf: "98765432110")
    end

    it "should list all users" do
      get "/users"

      expect(User.count).to eq(2)
    end
  end

  context "when doesnt have users" do
    it "shows a empty users list" do
      get "/users"

      expect(User.count).to eq(0)
    end
  end
end
