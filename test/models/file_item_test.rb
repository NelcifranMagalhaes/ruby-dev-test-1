require "test_helper"

class FileItemTest < ActiveSupport::TestCase
  def setup
    @directory = Directory.create(name: "Test Directory")
    @file_item = FileItem.new(content: File.new(Rails.root.join("test/fixtures/files/test_file.txt")), directory: @directory)
  end

  test "should be valid" do
    assert @file_item.valid?
  end

  test "content should be present" do
    @file_item.content = nil
    assert_not @file_item.valid?
  end

  test "should save file item with valid attributes" do
    assert_difference("FileItem.count", 1) do
      @file_item.save
    end
  end

  test "should destroy file item" do
    @file_item.save
    assert_difference("FileItem.count", -1) do
      @file_item.destroy
    end
  end
end
