require 'thread'

class BankAccount

def initialize(name, checking, savings)
	@name,@checking = name,checking,savings
	@lock = Mutex.new
end

def transfer_form_savings(x)
	@lock.synchronize {
	  @savings  -= x
	  @checking += x
	}
end

def report
	@lock.synchronize {
	  "#@name\nChecking: #@checking\nSavings: #@savings"
	}
end

end

