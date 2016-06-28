require "parser"

describe Parser do
  subject(:parser) {described_class.new}

	describe 'parser' do
		# it 'can display log data' do
    #   parser.save_log
		# 	expect(parser.log).to include("/help_page/1 126.318.035.038\n")
    #   expect(parser.log).to include("/home 200.017.277.774\n")
		# end

    # now private method save_log is tested within other methods that are tested below

    it 'can list webpages by most page views' do
      expect(parser.display_by_most_views).to eq [["/about/2", 90, "visits"], ["/contact", 89, "visits"], ["/index", 82, "visits"], ["/about", 81, "visits"], ["/help_page/1", 80, "visits"], ["/home", 78, "visits"]]
    end

    it 'can list order by most unique views' do
      expect(parser.display_by_unique_views).to eq "output"
    end
  end
end
