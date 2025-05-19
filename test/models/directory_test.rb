require "test_helper"

class DirectoryTest < ActiveSupport::TestCase
  def setup
    @directory = Directory.new(name: "Test Directory")
  end

  test "should be valid" do
    assert @directory.valid?
  end

  test "name should be present" do
    @directory.name = " "
    assert_not @directory.valid?
  end

  test "should save directory with valid attributes" do
    assert_difference("Directory.count", 1) do
      @directory.save
    end
  end

  test "should not save directory with invalid attributes" do
    @directory.name = nil
    assert_no_difference("Directory.count") do
      @directory.save
    end
  end

  test "should destroy directory" do
    @directory.save
    assert_difference("Directory.count", -1) do
      @directory.destroy
    end
  end

  test "should attach content" do
    @directory.content.attach(io: File.open(Rails.root.join("test/fixtures/files/test_file.txt")), filename: "test_file.txt")
    assert @directory.content.attached?
  end

  test "shoul create subdirectory" do
    subdirectory = @directory.subdirectories.build(name: "Subdirectory")
    assert_difference("Directory.count", 1) do
      subdirectory.save
    end
  end

  test "should create subirectory with FileItem" do
    subdirectory = @directory.subdirectories.build(name: "Subdirectory")
    subdirectory.file_items.build(content: File.new(Rails.root.join("test/fixtures/files/test_file.txt")))
    assert_difference("FileItem.count", 1) do
      subdirectory.save
    end
  end
end
