RSpec.describe 'PUT /api/orders/:id', type: :request do
  let(:user) {create(:user) }
  let(:auth_headers) { user.create_new_auth_token}
  let(:order) { create(:order, user_id: user.id) }
  let(:ordered_menu_item) { create(:menu_item) }
  describe 'successfully with valid params' do
    before do
      order.order_items.create(menu_item_id: ordered_menu_item.id)
      put "/api/orders/#{order.id}",
      params: {finalized: true},
      headers: auth_headers
    end

    it 'is expected to have a 200 status' do
      expect(response).to have_http_status 200
    end

    it 'is expected to return a success message' do
      expect(response_json['message']).to eq 'Your order will be able to pick up in 30 minutes!'
    end
  end
end