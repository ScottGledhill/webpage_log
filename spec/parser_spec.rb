require "parser"

describe Parser do
  subject(:parser) {described_class.new}

	describe 'log' do
		it 'can display data' do
      parser.access_log
			expect(parser.log).to include("/help_page/1 126.318.035.038\n")
		end

    it 'can display data' do
      parser.access_log
      expect(parser.log).to include("/home 200.017.277.774\n")
    end
  end
end
