RSpec.describe User, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:email).of_type('string') }
    it { is_expected.to have_db_column(:encrypted_password).of_type('string') }
  end

  describe "has validators" do
    it {is_expected.to validate_presence_of :email}
    it {is_expected.to validate_presence_of :encrypted_password}
    
  end
  
end
