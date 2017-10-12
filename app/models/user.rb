class User < ApplicationRecord
  validates :name, :email, :phone, :cpf,   presence: true
  validates :cpf, length: { is: 11 }
  validates :phone, length: { is: 11 }
  validates :name, :email, length: { minimum: 3 }

  before_create :inactivate_user

  def inactivate
    self.status = "inactive"
  end

  def activate
    self.update(status: "activated")
  end
end
