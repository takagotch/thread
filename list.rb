group = ThreadGroup.new
3.times {|n| group.add(Thread.new { do_task(n) })}
