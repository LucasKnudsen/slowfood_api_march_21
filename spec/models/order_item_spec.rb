require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  describe 'db table ' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:order_id).of_type(:integer) }
    it { is_expected.to have_db_column(:menu_item_id).of_type(:integer) }
  end
  
  describe 'Validate that it belongs to order item' do
    it { should belong_to(:menu_item) }
    it { should belong_to(:order) }
  end
end
