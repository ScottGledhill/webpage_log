class Parser
  attr_reader :log

  def initialize
    @log = []
  end

  def access_log
    File.open("/Users/ScottGledhill/desktop/projects/webpage_log/lib/webserver.log", "r") do |file_handle|
      file_handle.each_line do |data|
      @log << data
      end
    end
  end
end
