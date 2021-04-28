RSpec.describe "POST /api/users", type: :request do

  let(:user) {create(:user, email: 'user@email.com', password: 'password')}

  describe "successfully" do
    before do
      post '/api/users', params: {

        email: user.email,
        password: user.password
      }
    end

    it 'is expected to respond with status 201' do
      expect(response).to have_http_status 201
    end

  end 
end
