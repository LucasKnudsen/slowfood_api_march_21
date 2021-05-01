RSpec.describe 'GET api/menu_items/', type: :request do
  let!(:menu_item_1) { create(:menu_item, title: 'kebab', description: 'rice with kebab', price: 100, category: 'mains') }

  describe 'successfully' do
    before do
      get '/api/menu_items'
    end

    it 'is expected to respond with status 200' do
      expect(response).to have_http_status 200
    end

    it 'is expected to a category of mains' do
      expect(response_json['menu_items'].first['category']).to eq 'mains'
    end
    
  end
end
