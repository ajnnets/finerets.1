require 'rails_helper'

RSpec.describe "amenities/index", type: :view do
  before(:each) do
    assign(:amenities, [
      Amenity.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Amenity.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of amenities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
