require 'rails_helper'

RSpec.describe "amenities/show", type: :view do
  before(:each) do
    @amenity = assign(:amenity, Amenity.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
