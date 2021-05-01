RSpec.describe 'GET /api/orders/:id' do
  let(:user) { create(:user) }
  let(:auth_headers) { user.create_new_auth_token }
  let(:order) { create(:order, user_id: user.id) }
  let(:ordered_menu_item) { create(:menu_item) }
  let(:menu_item_to_order) { create(:menu_item, title: 'Tikka Masala') }
  describe 'successfully with valid  params' do
    before do
      order.order_items.create(menu_item_id: ordered_menu_item.id)
      get "/api/orders/#{order.id}",
          params: { menu_item_id: menu_item_to_order.id },
          headers: auth_headers
    end
    it 'is expected to return a 200 status' do
      expect(response).to have_http_status 200
    end
end
end