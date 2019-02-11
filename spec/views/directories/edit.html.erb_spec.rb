require 'rails_helper'

RSpec.describe "directories/edit", type: :view do
  before(:each) do
    @directory = assign(:directory, Directory.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit directory form" do
    render

    assert_select "form[action=?][method=?]", directory_path(@directory), "post" do

      assert_select "input[name=?]", "directory[name]"
    end
  end
end
