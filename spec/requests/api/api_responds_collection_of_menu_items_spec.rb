RSpec.describe 'GET /api/positions/', type: :request do

let!(:position_1) {create(:position, title: 'kebab', description: 'rice with kebab', price: 100)}
let!(:position_2) {create(:position)}

  describe('successfully') do
    before do
      get '/api/positions'
    end

    it 'is expected to respond with status 200' do
      expect(response).to have_http_status 200
    end

    it 'is expected to have a title' do 
      expect(response_json['positions'].count).to eq 2
    end
  end
end 