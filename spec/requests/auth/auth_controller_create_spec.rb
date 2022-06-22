# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthController, type: :request do
  describe 'Registro de usuario' do
    let(:role_id) { create(:role).id }
    # Creamos una instancia de user para usar en las pruebas
    let(:user) do
      {
        first_name: Faker::Name.name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: Faker::Internet.password(min_length: 8, max_length: 16),
        role_id: role_id
      }
    end

    let(:bad_user) do
      { first_name: Faker::Name.name, last_name: Faker::Name.last_name, password: '123' }
    end

    context 'with valid data' do
      it 'debe crear un usuario' do
        post '/auth/register', params: { user: user }, as: :json
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid data' do
      it 'debe devolver un error' do
        post '/auth/register', params: { user: bad_user }, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
