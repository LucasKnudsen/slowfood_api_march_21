RSpec.describe User, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:email).of_type('string') }
    it { is_expected.to have_db_column(:password).of_type('string') }
  end

  describe "has validators" do
    it {is_expected.to validate_presence_of :email}
    it {is_expected.to validate_presence_of :password}
    
  end
  
end
