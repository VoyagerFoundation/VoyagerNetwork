require 'rails_helper'

RSpec.describe "hypotheses/edit", type: :view do
  before(:each) do
    @hypothesis = assign(:hypothesis, Hypothesis.create!(
      :hypothesis => "MyString",
      :type => 1,
      :validity => 1,
      :problem => nil
    ))
  end

  it "renders the edit hypothesis form" do
    render

    assert_select "form[action=?][method=?]", hypothesis_path(@hypothesis), "post" do

      assert_select "input[name=?]", "hypothesis[hypothesis]"

      assert_select "input[name=?]", "hypothesis[type]"

      assert_select "input[name=?]", "hypothesis[validity]"

      assert_select "input[name=?]", "hypothesis[problem_id]"
    end
  end
end
