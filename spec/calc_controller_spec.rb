# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'rails_helper'

RSpec.describe CalcController, type: :controller do
  context 'if 2 3 4 2 5 3 6 7 8 5 8 6 3 5 4 7 2 9 5 6 7 8 8 8 9 4 2 1 is entered,' do
    it 'a correct result is returned' do
      expect(CalcController.processor([2, 3, 4, 2, 5, 3, 6, 7, 8, 5, 8, 6, 3, 5, 4, 7, 2, 9, 5, 6, 7, 8, 8, 8, 9, 4, 2, 1])[1]).to eq("2 3 4, 2 5, 3 6 7 8, 5 8, 6, 3 5, 4 7, 2 9, 5 6 7 8 8 8 9, 4, 2, 1")
      expect(CalcController.processor([2, 3, 4, 2, 5, 3, 6, 7, 8, 5, 8, 6, 3, 5, 4, 7, 2, 9, 5, 6, 7, 8, 8, 8, 9, 4, 2, 1])[2]).to eq("5 6 7 8 8 8 9")
    end
  end

  describe 'GET input' do
    context 'check input page' do
      it 'has a 200 status code' do
        get :input
        expect(response.status).to eq(200)
      end
    end
  end

end
