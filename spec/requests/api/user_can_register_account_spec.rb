RSpec.describe 'POST /api/auth', type: :request do
  describe 'successfully' do
    before do
      post '/api/auth', params: {
        email: 'user@email.com',
        password: 'password',
        password_confirmation: 'password'

      }
    end

    it 'is expected to respond with status 201' do
      expect(response).to have_http_status 200
    end
    it 'is expected to have a password' do
      expect(response_json['status']).to eq 'success'
    end
    it 'is expected to have an email account' do
      expect(response_json['data']['email']).to eq 'user@email.com'
    end
  end
end
