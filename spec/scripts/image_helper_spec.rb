require 'spec_helper'
require_relative '../../scripts/image-helper'

RSpec.describe ImageHelper do
  let(:helper) { ImageHelper.new }
  let(:post_slug) { "test-post" }
  let(:test_image_path) { File.join(@temp_dir, "test-image.png") }

  before do
    Dir.chdir(@temp_dir)
    FileUtils.mkdir_p('images')

    # Create mock image file
    File.write(test_image_path, "fake image content")
  end

  describe '#add_image' do
    it 'copies image to correct directory' do
      helper.add_image(post_slug, test_image_path, "Alt text")

      dest_path = "images/#{post_slug}/test-image.png"
      expect(File.exist?(dest_path)).to be true
    end

    it 'returns correct markdown' do
      markdown = helper.add_image(post_slug, test_image_path, "Alt text")
      expect(markdown).to eq("![Alt text](/images/#{post_slug}/test-image.png)")
    end
  end

  describe '#list_images' do
    before do
      helper.add_image(post_slug, test_image_path)
    end

    it 'lists images for post' do
      expect { helper.list_images(post_slug) }.to output(/test-image.png/).to_stdout
    end
  end

  describe '#create_image_gallery' do
    let(:image_paths) { [test_image_path, test_image_path] }

    it 'creates gallery with multiple images' do
      gallery = helper.create_image_gallery(post_slug, image_paths)
      expect(gallery.split("\n\n").length).to eq(2)
    end
  end
end