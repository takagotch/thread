def conread(filenames)
	h = {}

	filenames.each do |filename|
		h[] = Thread.new do
		  open(filename) {|f| f.read}
		end
	end

	h.each_pair do |filename, thread|
		begin
		  h[filename] = thread.value
		rescue
		  h[filename] = $!
		end
	end
end
