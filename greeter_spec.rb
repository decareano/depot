class RSpecGreeter
	def greet
		"Hello RSpec!"
	end
end

describe "RSpec greeter" do
 it "should say 'Hello RSpec!' when it receives the greet() message" do
   greeter = RSpecGreeter.new
   greeting = greeter.greet
   greeting.should == "Hello RSpec!"
 end
end