require "parser"

describe Parser do
  subject(:parser) {described_class.new}

	describe 'parser' do
		# it 'can display log data' do
    #   parser.save_log
		# 	expect(parser.log).to include("/help_page/1 126.318.035.038\n")
		# end
    #
    # it 'can display log data' do
    #   parser.save_log
    #   expect(parser.log).to include("/home 200.017.277.774\n")
    # end

    # now private method save_log is tested within other methods that are tested below

    it 'can list webpages by most page views' do
      expect(parser.display_by_most_views).to eq [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
    end
  end
end
