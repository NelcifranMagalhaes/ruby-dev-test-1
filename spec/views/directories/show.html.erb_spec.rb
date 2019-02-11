require 'rails_helper'

RSpec.describe "directories/show", type: :view do
  before(:each) do
    @directory = assign(:directory, Directory.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
