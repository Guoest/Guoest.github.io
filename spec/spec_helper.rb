require 'rspec'
require 'fileutils'
require 'tmpdir'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.disable_monkey_patching!
  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  config.order = :random
  Kernel.srand config.seed

  # Test helpers
  config.before(:each) do
    @temp_dir = Dir.mktmpdir
    @original_dir = Dir.pwd
  end

  config.after(:each) do
    Dir.chdir(@original_dir)
    FileUtils.rm_rf(@temp_dir) if @temp_dir
  end
end