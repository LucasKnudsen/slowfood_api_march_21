RSpec.describe 'GET /api/menu_items/', type: :request do
  let!(:menu_item_1) { create(:menu_item, title: 'kebab', description: 'rice with kebab', price: 100) }
  let!(:menu_item_2) { create(:menu_item) }

  describe('successfully') do
    before do
      get '/api/menu_items'
    end

    it 'is expected to respond with status 200' do
      expect(response).to have_http_status 200
    end

    it 'is expected to have a 2 menu_items on the menu' do
      expect(response_json['menu_items'].count).to eq 2
    end

    it 'is expected menu_item to have a title' do
      expect(response_json['menu_items'].first['title']).to eq 'kebab'
    end
  end
end
