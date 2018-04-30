require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :tickets_url => "Tickets Url",
        :livestream_url => "Livestream Url",
        :country => "Country",
        :city => "City",
        :venue => "Venue",
        :description => "Description",
        :agenda => "Agenda",
        :speakers => "Speakers"
      ),
      Event.create!(
        :name => "Name",
        :tickets_url => "Tickets Url",
        :livestream_url => "Livestream Url",
        :country => "Country",
        :city => "City",
        :venue => "Venue",
        :description => "Description",
        :agenda => "Agenda",
        :speakers => "Speakers"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tickets Url".to_s, :count => 2
    assert_select "tr>td", :text => "Livestream Url".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Agenda".to_s, :count => 2
    assert_select "tr>td", :text => "Speakers".to_s, :count => 2
  end
end
