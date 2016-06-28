require "parser"

describe Parser do
  subject(:parser) {described_class.new}

	describe 'parser' do
		it 'can display log data' do
      parser.save_log
			expect(parser.log).to include("/help_page/1 126.318.035.038\n")
		end

    it 'can display log data' do
      parser.save_log
      expect(parser.log).to include("/home 200.017.277.774\n")
    end

    it 'can list webpages by most views' do
      expect(parser.display_by_most_views).to eq "add sorted list here"
    end
  end
end
