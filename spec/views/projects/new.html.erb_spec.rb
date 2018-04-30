require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :user => nil,
      :name => "MyString",
      :description => "MyText",
      :website => ""
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[user_id]"

      assert_select "input[name=?]", "project[name]"

      assert_select "textarea[name=?]", "project[description]"

      assert_select "input[name=?]", "project[website]"
    end
  end
end
