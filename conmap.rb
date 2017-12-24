module Enumerable
  def conmap(&block)
    threads = []
    self.each do |item|
	    threads << Thread.new { block.call(item) }
    end

    thread.map {|t| t.value }
  end
end
#
#module Enumerable
#  def concurrently
#    map {|item| Thread.new { yeild item }}.each{|t| t.join}
#  end
#end
#
#h.each_pair.concurrently {|*pair| process(pair)}
#
