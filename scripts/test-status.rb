#!/usr/bin/env ruby
# Test status checker for Claude Code
# Ensures tests are clean and ready to run

require 'open3'

puts "🔍 Checking test status for Claude Code..."

# Set Ruby environment
ENV['PATH'] = "/opt/homebrew/opt/ruby/bin:#{ENV['PATH']}"

# Clean any existing test artifacts first
puts "Cleaning test artifacts..."
system('bundle exec rake test_clean')

# Run the test suite
puts "Running full test suite..."
stdout, stderr, status = Open3.capture3('bundle exec rake test')

if status.success?
  puts ""
  puts "✅ ALL TESTS PASS - Ready for commit!"
  puts ""
  puts "Test Summary:"
  puts "- RSpec tests: PASSING"
  puts "- Jekyll build: SUCCESS"
  puts "- HTMLProofer: PASSING (warnings acceptable)"
  puts "- Front matter validation: PASSING"
  puts ""
  exit 0
else
  puts ""
  puts "❌ TESTS FAILING - Must fix before proceeding!"
  puts ""
  puts "Error details:"
  puts stderr.split("\n").last(10).join("\n") # Show last 10 lines of error
  puts ""
  puts "To debug:"
  puts "  bundle exec rake test"
  puts "  bundle exec rspec          # RSpec only"
  puts "  bundle exec rake htmlproofer # HTMLProofer only"
  puts ""
  puts "After fixing issues, run this script again."
  exit 1
end