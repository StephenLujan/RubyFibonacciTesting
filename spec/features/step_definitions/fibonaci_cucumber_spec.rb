require 'cucumber'
require 'colorize'
$LOAD_PATH.unshift(File.join(__dir__, '..', '..', '..', 'lib'))
require 'fibonacci'


Given /^length = (\d+)/ do |arg1|
  @length = arg1.to_i
end

Given /^first = (\d+)$/ do |arg1|
  @first = arg1.to_i
end

Given /^second = (\d+)$/ do |arg1|
  @second = arg1.to_i
end

Then(/^I can assert that Fibonacci\.new\(first, second\)\.sequence\(length\)\s*==\s*(\[\s*(\d+\,\s*)+\d+\])$/) do |arg1, arg2|
  eval("@sequence = #{arg1}")
  expect(Fibonacci.new(@first, @second).sequence(@length)).to eq(@sequence)
end