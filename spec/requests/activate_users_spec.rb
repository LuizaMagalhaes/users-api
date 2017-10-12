require "rails_helper"

RSpec.describe "Activate users", type: :request do
  context "Success" do
    before do
      @user = User.create(name: "Harry Potter",
                          email: "harry@test.com",
                          phone: "12345678901",
                          cpf: "12345678901",
                          status: "inactive")
    end

    it "Activates user" do
      put "/users/#{@user.id}/activate"

      last_user = User.last

      expect(last_user.status).to eq("activated")
    end
  end
end
