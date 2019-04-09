require 'rails_helper'

RSpec.describe "hypotheses/show", type: :view do
  before(:each) do
    @hypothesis = assign(:hypothesis, Hypothesis.create!(
      :hypothesis => "Hypothesis",
      :type => 2,
      :validity => 3,
      :problem => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hypothesis/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
