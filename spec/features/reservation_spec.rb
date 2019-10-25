require 'rails_helper'

describe 'Route to index' do
    it 'has an index page' do
      visit reservations_path
      expect(page.status_code).to eq(200)
    end
  end
  
