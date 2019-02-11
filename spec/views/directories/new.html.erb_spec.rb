require 'rails_helper'

RSpec.describe "directories/new", type: :view do
  before(:each) do
    assign(:directory, Directory.new(
      :name => "MyString"
    ))
  end

  it "renders new directory form" do
    render

    assert_select "form[action=?][method=?]", directories_path, "post" do

      assert_select "input[name=?]", "directory[name]"
    end
  end
end
