require 'rails_helper'

describe 'Route to home' do
    it 'has an home page' do
      visit home_path
      expect(page.status_code).to eq(200)
    end
  end
  