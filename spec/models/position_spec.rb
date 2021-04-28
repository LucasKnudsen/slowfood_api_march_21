RSpec.describe Position, type: :model do
  describe 'db table ' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:price).of_type(:integer) }
  end

  describe 'Validation of title' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'factory' do
    it 'expected to have valid factory' do
      expect(create(:position)).to be_valid
    end
  end
end
