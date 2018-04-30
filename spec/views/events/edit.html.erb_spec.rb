require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :tickets_url => "MyString",
      :livestream_url => "MyString",
      :country => "MyString",
      :city => "MyString",
      :venue => "MyString",
      :description => "MyString",
      :agenda => "MyString",
      :speakers => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[name]"

      assert_select "input[name=?]", "event[tickets_url]"

      assert_select "input[name=?]", "event[livestream_url]"

      assert_select "input[name=?]", "event[country]"

      assert_select "input[name=?]", "event[city]"

      assert_select "input[name=?]", "event[venue]"

      assert_select "input[name=?]", "event[description]"

      assert_select "input[name=?]", "event[agenda]"

      assert_select "input[name=?]", "event[speakers]"
    end
  end
end
