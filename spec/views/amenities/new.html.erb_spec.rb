require 'rails_helper'

RSpec.describe "amenities/new", type: :view do
  before(:each) do
    assign(:amenity, Amenity.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new amenity form" do
    render

    assert_select "form[action=?][method=?]", amenities_path, "post" do

      assert_select "input#amenity_name[name=?]", "amenity[name]"

      assert_select "textarea#amenity_description[name=?]", "amenity[description]"
    end
  end
end
