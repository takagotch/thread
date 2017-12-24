def join_all
	main = Thread.main
	current = Thread.current
	all = Thread.list
	all.each {|t| t.join unless t == current or t == main}
end

