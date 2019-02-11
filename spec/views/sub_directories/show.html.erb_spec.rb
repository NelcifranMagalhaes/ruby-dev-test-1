require 'rails_helper'

RSpec.describe "sub_directories/show", type: :view do
  before(:each) do
    @sub_directory = assign(:sub_directory, SubDirectory.create!(
      :name => "Name",
      :directory => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
