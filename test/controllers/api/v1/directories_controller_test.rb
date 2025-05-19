require "test_helper"

class Api::V1::DirectoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @directory = Directory.create!(name: "Test Directory")
  end

  test "should get index" do
    get api_v1_directories_url, as: :json
    assert_response :success
  end

  test "should show directory" do
    get api_v1_directory_url(@directory), as: :json
    assert_response :success
  end

  test "should create directory" do
    assert_difference("Directory.count") do
      post api_v1_directories_url, params: { directory: { name: "New Directory" } }, as: :json
    end
    assert_response :created
  end
  test "should not create directory with invalid attributes" do
    assert_no_difference("Directory.count") do
      post api_v1_directories_url, params: { directory: { name: "" } }, as: :json
    end
    assert_response :unprocessable_entity
  end

  test "should create directory with file" do
    assert_difference("Directory.count") do
      post api_v1_directories_url, params: { directory: { name: "New Directory", content: fixture_file_upload("test_file.txt", "text/plain") } }, as: :json
    end
  end

  test "should create directory with subdirectory" do
    assert_difference("Directory.count", 3) do
      post api_v1_directories_url, params: {
        directory: {
          name: "Parent Directory",
          subdirectories_attributes: [
            { name: "Subdirectory 1" },
            { name: "Subdirectory 2" }
          ]
        }
      }, as: :json
    end
  end

  test "should update directory" do
    patch api_v1_directory_url(@directory), params: { directory: { name: "Updated Name" } }, as: :json
    assert_response :success
  end

  test "should destroy directory" do
    assert_difference("Directory.count", -1) do
      delete api_v1_directory_url(@directory), as: :json
    end
    assert_response :no_content
  end
end
