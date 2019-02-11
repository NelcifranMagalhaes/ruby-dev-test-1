require 'rails_helper'

RSpec.describe "sub_directories/index", type: :view do
  before(:each) do
    assign(:sub_directories, [
      SubDirectory.create!(
        :name => "Name",
        :directory => nil
      ),
      SubDirectory.create!(
        :name => "Name",
        :directory => nil
      )
    ])
  end

  it "renders a list of sub_directories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
