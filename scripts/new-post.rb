#!/usr/bin/env ruby
# Post creation script for Jekyll blog
# Usage: ruby scripts/new-post.rb "Post Title" [tech|life]

require 'date'
require 'fileutils'

def slugify(text)
  text.downcase.gsub(/[^a-z0-9\s]/, '').gsub(/\s+/, '-')
end

def create_post(title, category = 'tech')
  # Generate filename
  date = Date.today
  slug = slugify(title)
  filename = "#{date.strftime('%Y-%m-%d')}-#{slug}.md"
  filepath = File.join('_posts', filename)
  
  # Create image folder
  image_folder = File.join('images', slug)
  FileUtils.mkdir_p(image_folder)
  
  # Load template
  template_file = category == 'life' ? '_posts/life-template-enhanced.md' : '_posts/tech-template-enhanced.md'
  template = File.read(template_file)
  
  # Replace placeholders
  content = template.gsub('{{TITLE}}', title)
                   .gsub('{{DATE}}', date.strftime('%Y-%m-%d'))
                   .gsub('{{SLUG}}', slug)
  
  # Write post file
  File.write(filepath, content)
  
  puts "✅ Created post: #{filepath}"
  puts "📁 Created image folder: #{image_folder}"
  puts "🖼️  Add images to: #{image_folder}/"
  puts "📝 Edit post: #{filepath}"
  
  # Open in default editor if available
  if ENV['EDITOR']
    system("#{ENV['EDITOR']} #{filepath}")
  end
end

# Main execution
if ARGV.length < 1
  puts "Usage: ruby scripts/new-post.rb \"Post Title\" [tech|life]"
  puts "Example: ruby scripts/new-post.rb \"My New Post\" tech"
  exit 1
end

title = ARGV[0]
category = ARGV[1] || 'tech'

unless ['tech', 'life'].include?(category)
  puts "Category must be 'tech' or 'life'"
  exit 1
end

create_post(title, category)