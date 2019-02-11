require 'rails_helper'

RSpec.describe "sub_directories/new", type: :view do
  before(:each) do
    assign(:sub_directory, SubDirectory.new(
      :name => "MyString",
      :directory => nil
    ))
  end

  it "renders new sub_directory form" do
    render

    assert_select "form[action=?][method=?]", sub_directories_path, "post" do

      assert_select "input[name=?]", "sub_directory[name]"

      assert_select "input[name=?]", "sub_directory[directory_id]"
    end
  end
end
