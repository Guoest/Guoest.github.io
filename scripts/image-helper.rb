#!/usr/bin/env ruby
# Image helper script for Jekyll blog
# Usage: ruby scripts/image-helper.rb [command] [options]

require 'fileutils'

class ImageHelper
  def initialize
    @images_dir = 'images'
  end
  
  def add_image(post_slug, image_path, alt_text = '')
    dest_dir = File.join(@images_dir, post_slug)
    FileUtils.mkdir_p(dest_dir)
    
    # Copy image to post folder
    filename = File.basename(image_path)
    dest_path = File.join(dest_dir, filename)
    FileUtils.cp(image_path, dest_path)
    
    # Generate markdown
    relative_path = "/#{dest_path}"
    markdown = "![#{alt_text}](#{relative_path})"
    
    puts "✅ Image copied to: #{dest_path}"
    puts "📋 Markdown copied to clipboard:"
    puts markdown
    
    # Copy to clipboard if pbcopy available (macOS)
    if system('which pbcopy > /dev/null 2>&1')
      IO.popen('pbcopy', 'w') { |io| io.write(markdown) }
      puts "📋 Markdown copied to clipboard!"
    end
    
    markdown
  end
  
  def create_image_gallery(post_slug, images)
    dest_dir = File.join(@images_dir, post_slug)
    FileUtils.mkdir_p(dest_dir)
    
    gallery_markdown = []
    
    images.each_with_index do |img_path, index|
      filename = "gallery-#{index + 1}#{File.extname(img_path)}"
      dest_path = File.join(dest_dir, filename)
      FileUtils.cp(img_path, dest_path)
      
      relative_path = "/#{dest_path}"
      gallery_markdown << "![](#{relative_path})"
    end
    
    puts "✅ Gallery created with #{images.length} images"
    puts "📋 Gallery markdown:"
    puts gallery_markdown.join("\n\n")
    
    gallery_markdown.join("\n\n")
  end
  
  def screenshot_workflow(post_slug, description = 'Screenshot')
    dest_dir = File.join(@images_dir, post_slug)
    FileUtils.mkdir_p(dest_dir)
    
    puts "📸 Take a screenshot and save it..."
    puts "💾 Save location: #{File.absolute_path(dest_dir)}"
    puts "📝 Suggested filename: screenshot-#{Time.now.strftime('%H%M%S')}.png"
    puts ""
    puts "After saving, run:"
    puts "ruby scripts/image-helper.rb add #{post_slug} path/to/screenshot.png \"#{description}\""
  end
  
  def list_images(post_slug = nil)
    if post_slug
      dir = File.join(@images_dir, post_slug)
      if Dir.exist?(dir)
        images = Dir.glob(File.join(dir, '*')).select { |f| File.file?(f) }
        puts "📁 Images in #{post_slug}:"
        images.each { |img| puts "  - #{File.basename(img)}" }
      else
        puts "❌ No image folder found for: #{post_slug}"
      end
    else
      subdirs = Dir.glob(File.join(@images_dir, '*')).select { |f| File.directory?(f) }
      puts "📁 Image folders:"
      subdirs.each { |dir| puts "  - #{File.basename(dir)}" }
    end
  end
end

# Main execution
helper = ImageHelper.new

command = ARGV[0]
case command
when 'add'
  if ARGV.length < 3
    puts "Usage: ruby scripts/image-helper.rb add [post-slug] [image-path] [alt-text]"
    exit 1
  end
  helper.add_image(ARGV[1], ARGV[2], ARGV[3] || '')
  
when 'gallery'
  if ARGV.length < 3
    puts "Usage: ruby scripts/image-helper.rb gallery [post-slug] [image1] [image2] ..."
    exit 1
  end
  helper.create_image_gallery(ARGV[1], ARGV[2..-1])
  
when 'screenshot'
  if ARGV.length < 2
    puts "Usage: ruby scripts/image-helper.rb screenshot [post-slug] [description]"
    exit 1
  end
  helper.screenshot_workflow(ARGV[1], ARGV[2] || 'Screenshot')
  
when 'list'
  helper.list_images(ARGV[1])
  
else
  puts "Image Helper for Jekyll Blog"
  puts ""
  puts "Commands:"
  puts "  add [post-slug] [image-path] [alt-text]  - Add image and generate markdown"
  puts "  gallery [post-slug] [images...]          - Create image gallery"
  puts "  screenshot [post-slug] [description]     - Setup screenshot workflow"
  puts "  list [post-slug]                         - List images for post"
  puts ""
  puts "Examples:"
  puts "  ruby scripts/image-helper.rb add my-post ~/Desktop/image.png \"My image\""
  puts "  ruby scripts/image-helper.rb screenshot my-post \"Demo screenshot\""
  puts "  ruby scripts/image-helper.rb list my-post"
end