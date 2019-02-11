require 'rails_helper'

RSpec.describe "directories/index", type: :view do
  before(:each) do
    assign(:directories, [
      Directory.create!(
        :name => "Name"
      ),
      Directory.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of directories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
