class CucumberGreeter
	def greet
		"Hello Cukes"
	end
end

Given /^a greeter$/ do
  @greeter = CucumberGreeter.new
end

When /^I send the greet message$/ do
  @message = @greeter.greet
end

Then /^I should see "([^"]*)"$/ do |greeting|
  @message.should == greeting
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  Codebreaker::Game.new.start
end
