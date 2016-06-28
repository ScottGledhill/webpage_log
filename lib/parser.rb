class Parser
  attr_reader :log

  def initialize
    @log = []
  end

  def display_by_most_views
    save_log
    views = log.each {|log| log.slice!(-17..100)}
    output = views.each_with_object(Hash.new(0)){ |m,h| h[m] += 1}.sort_by{ |k,v| v}.reverse
    display = output.each {|put| put << "visits"}
    display.each {|array| p array.join(" ")}
  end

  def display_by_unique_views
    save_log
    unique = log.uniq
    views = unique.each {|log| log.slice!(-17..100)}
    output = views.each_with_object(Hash.new(0)){ |m,h| h[m] += 1}.sort_by{ |k,v| v}.reverse
    display = output.each {|put| put << "Unique Views"}
    display.each {|array| p array.join(" ")}
  end

  private

  def save_log
    File.open("/Users/ScottGledhill/desktop/projects/webpage_log/lib/webserver.log", "r") do |file_handle|
      file_handle.each_line do |data|
        @log << data
      end
    end
  end
end
