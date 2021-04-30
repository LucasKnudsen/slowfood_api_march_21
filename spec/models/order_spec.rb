require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column(:id).of_type(:integer)} 
    it { is_expected.to have_db_column(:user_id).of_type(:integer)} 
  end
  describe 'Validation that order belongs to user' do
    it { should belong_to(:user) }
  end  
end
#pending "add some examples to (or delete) #{__FILE__}"