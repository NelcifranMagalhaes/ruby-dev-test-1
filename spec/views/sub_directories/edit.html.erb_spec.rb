require 'rails_helper'

RSpec.describe "sub_directories/edit", type: :view do
  before(:each) do
    @sub_directory = assign(:sub_directory, SubDirectory.create!(
      :name => "MyString",
      :directory => nil
    ))
  end

  it "renders the edit sub_directory form" do
    render

    assert_select "form[action=?][method=?]", sub_directory_path(@sub_directory), "post" do

      assert_select "input[name=?]", "sub_directory[name]"

      assert_select "input[name=?]", "sub_directory[directory_id]"
    end
  end
end
