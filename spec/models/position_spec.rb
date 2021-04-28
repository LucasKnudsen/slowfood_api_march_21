
RSpec.describe Position, type: :model do
  describe "db table " do
    it{is_expected.to have_db_column :title}
  end  
    
  describe "db table " do
    it{is_expected.to have_db_column(:description).of_type(:string)}
  end

  describe "db table " do
    it{is_expected.to have_db_column(:price).of_type(:integer) }
  end

  describe 'Validation of title' do
    it{is_expected.to validate_presence_of :title }
  end

  describe 'Validation of price' do
    it{is_expected.to validate_presence_of :price }
  end

  describe "factory" do
    it'expected to have valid factory' do
      expect(create(:position)).to be_valid
    end
  end
end
