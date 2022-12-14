require 'rails_helper'

RSpec.describe 'Content', type: :system do
	scenario 'valid input' do
		visit ('/')
		fill_in :num, with: '1 2 3 4 2 4 3 1 6 4 7 9'

		find('#btn').click

		expect(find("#result1")).to have_text('1 2 3 4 2 4 3 1 6 4 7 9')
    expect(find("#result2")).to have_text('1 2 3 4, 2 4, 3, 1 6, 4 7 9')
    expect(find("#result3")).to have_text('1 2 3 4')
	end
end
