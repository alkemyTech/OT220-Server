# frozen_string_literal: true

require 'swagger_helper'
require 'rails_helper'

RSpec.describe 'categories', type: :request do
  path '/categories' do
    get('list categories') do
      tags 'Category'
      response(200, 'List categories') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end

        run_test!
      end
    end
  end

  path '/categories' do
    post 'Creates a category' do
      tags 'Category'
      security [ api_key: [] ]
      consumes 'application/json'
      parameter name: :Authorization, in: :header, type: :string, required: true
      parameter name: :category, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        },
        required: ['name']
      }

      response '201', 'category created' do
        let(:Authorization) { 'foobar' }
        let(:category) { { name: 'foo', description: 'test' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:api_key) { 'barfoo' }
        let(:category) { { description: 'test' } }
        run_test!
      end
    end
  end

  path '/categories/{id}' do
    delete 'Delete a category' do
      tags 'Category'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'category deleted' do
        schema type: :object, properties:
        {
          id: {
            type: :integer
          }
        }, required: ['id']
        run_test!
      end

      response '404', 'category not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
