require 'rails_helper'

RSpec.describe "regions/new", type: :view do
  before(:each) do
    assign(:region, Region.new(
      :name => "MyString",
      :country => nil,
      :published => false
    ))
  end

  it "renders new region form" do
    render

    assert_select "form[action=?][method=?]", regions_path, "post" do

      assert_select "input#region_name[name=?]", "region[name]"

      assert_select "input#region_country_id[name=?]", "region[country_id]"

      assert_select "input#region_published[name=?]", "region[published]"
    end
  end
end
