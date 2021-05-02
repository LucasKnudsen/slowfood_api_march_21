RSpec.describe 'PUT /api/orders/:id', type: :request do
  let(:user) {create(:user) }
  let(:auth_headers) { user.create_new_auth_token}
  let(:order) { create(:order, user_id: user.id) }
  let(:ordered_menu_item) { create(:menu_item) }
  let(:menu_item_to_order) { create(:menu_item, title: 'Tikka Masala') }
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
      expect(response_json['message']).to eq 'Your will  be able to pick up your order in 30 minutes!'
    end
    it 'is expected to update the order to be finalized' do 
      expect(order.reload.finalized?).to eq true
    end
  end
  describe 'unsuccessfully' do 
    let(:order) {create(:order, user_id: user.id, finalized:true)}
    before do
      order.order_items.create(menu_item_id: ordered_menu_item.id)
      put "/api/orders/#{order.id}",
          params: { menu_item_id: menu_item_to_order.id },
          headers: {}
    end

    it 'is expected to return a 401 status' do 
      expect(response).to have_http_status 401
    end
  end
end
