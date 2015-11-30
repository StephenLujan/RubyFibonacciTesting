require 'cucumber'
require 'colorize'
$LOAD_PATH.unshift(File.join(__dir__, '..', '..', '..', 'lib'))
require 'fibonacci'

Given(/^x = (\d+)$/) do |arg1|
  @length = arg1.to_i
end


Then(/^I can assert that fibonacci_sequence\(x\)\s*==\s*(\[(\d+\,\s*)+\d+\])$/) do |arg1, arg2|
  eval( "@sequence = #{arg1}")
  expect(fibonacci_sequence(@length)).to eq(@sequence)
end