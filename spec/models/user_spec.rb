require "rails_helper"

RSpec.describe User, type: :model do
  it { should validate_length_of(:name).is_at_least(3)   }
  it { should validate_length_of(:email).is_at_least(3)  }
  it { should validate_length_of(:phone).is_equal_to(11) }
  it { should validate_length_of(:cpf).is_equal_to(11)   }

  it { is_expected.to validate_presence_of(:name)  }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:phone) }
  it { is_expected.to validate_presence_of(:cpf)   }
end
