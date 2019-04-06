require 'rails_helper'

RSpec.describe "hypotheses/index", type: :view do
  before(:each) do
    assign(:hypotheses, [
      Hypothesis.create!(
        :hypothesis => "Hypothesis",
        :type => 2,
        :validity => 3,
        :problem => nil
      ),
      Hypothesis.create!(
        :hypothesis => "Hypothesis",
        :type => 2,
        :validity => 3,
        :problem => nil
      )
    ])
  end

  it "renders a list of hypotheses" do
    render
    assert_select "tr>td", :text => "Hypothesis".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
