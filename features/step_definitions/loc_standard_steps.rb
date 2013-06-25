begin
  require 'rspec/expectations';
  rescue LoadError;
    require 'spec/expectations';
end

require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

require 'lines_of_code'

Before do
  @loc = LinesOfCode.new
end

After do
end

Given /the code in file (\w+)/ do |file|
  @piece_of_code = "bla bla"  # file.open.blabla
end

Given /this (\w+)/ do |piece_of_code|
  @piece_of_code = piece_of_code
end

When /I calculate LOC metric/ do ||
  @result = @loc.get_loc(@piece_of_code)
end

Then /the result should be (.*)/ do |result|
  @result.should == result.to_i
end