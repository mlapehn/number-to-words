require './spec/spec_helper'
require './to_words'

describe 'to_words' do 

	it 'translates the ones' do
		[[1,'one'], [2,'two'], [3,'three'], [4,'four'], [5,'five'],
		 [6,'six'], [7,'seven'], [8,'eight'], [9,'nine']].each do |test_case|
			expect(to_words(test_case.first)).to eq test_case.last
		end
	end

	it 'translates the teens' do
		[[11,'eleven'], [12,'twelve'], [13,'thirteen'], [14,'fourteen'],
		 [15,'fifteen'], [16,'sixteen'], [17,'seventeen'], 
		 [18,'eighteen'], [19,'nineteen']].each do |test_case|
			expect(to_words(test_case.first)).to eq test_case.last
		end
	end

	it 'translates numbers between 20 and 99' do
		[[26,'twenty-six'], [34,'thirty-four'], [42,'forty-two'], 
		 [59,'fifty-nine'], [61,'sixty-one'], [75,'seventy-five'], 
		 [83,'eighty-three'], [90,'ninety']].each do |test_case|
			expect(to_words(test_case.first)).to eq test_case.last
		end
	end

	it 'translates 100' do
		expect(to_words(100)).to eq 'one hundred'
	end
end