class User < ApplicationRecord
  validates :name,  presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :cpf,   presence: true

  before_create :inactivate_user

  def inactivate_user
    self.status = "inactive"
  end
end
