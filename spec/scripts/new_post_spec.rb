require 'spec_helper'
require 'date'
require 'fileutils'

# Stub ARGV to prevent script execution
original_argv = ARGV.dup
ARGV.clear
ARGV.push('dummy-title', 'tech')

require_relative '../../scripts/new-post'

# Restore original ARGV
ARGV.clear
ARGV.concat(original_argv)

RSpec.describe 'new-post.rb' do
  let(:test_title) { "Test Post Title" }
  let(:test_category) { "tech" }

  before do
    Dir.chdir(@temp_dir)
    FileUtils.mkdir_p('_posts')
    FileUtils.mkdir_p('images')

    # Create mock templates
    File.write('_posts/tech-template-enhanced.md', <<~TEMPLATE)
      ---
      layout: post
      title: "{{TITLE}}"
      date: {{DATE}}
      categories: [tech]
      ---

      Your content here with /images/{{SLUG}}/hero.png
    TEMPLATE

    File.write('_posts/life-template-enhanced.md', <<~TEMPLATE)
      ---
      layout: post
      title: "{{TITLE}}"
      date: {{DATE}}
      categories: [life]
      ---

      Your life content here with /images/{{SLUG}}/hero.jpg
    TEMPLATE
  end

  describe 'slugify function' do
    it 'converts title to slug' do
      expect(slugify("Test Post Title")).to eq("test-post-title")
      expect(slugify("Post With Special! Characters?")).to eq("post-with-special-characters")
    end
  end

  describe 'create_post function' do
    it 'creates post file with correct name' do
      create_post(test_title, test_category)

      expected_filename = "#{Date.today.strftime('%Y-%m-%d')}-test-post-title.md"
      expect(File.exist?("_posts/#{expected_filename}")).to be true
    end

    it 'creates image directory' do
      create_post(test_title, test_category)
      expect(Dir.exist?("images/test-post-title")).to be true
    end

    it 'replaces template placeholders' do
      create_post(test_title, test_category)

      filename = "#{Date.today.strftime('%Y-%m-%d')}-test-post-title.md"
      content = File.read("_posts/#{filename}")

      expect(content).to include('title: "Test Post Title"')
      expect(content).to include("date: #{Date.today.strftime('%Y-%m-%d')}")
      expect(content).to include("/images/test-post-title/")
    end
  end
end