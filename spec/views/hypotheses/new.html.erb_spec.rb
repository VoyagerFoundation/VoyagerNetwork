require 'rails_helper'

RSpec.describe "hypotheses/new", type: :view do
  before(:each) do
    assign(:hypothesis, Hypothesis.new(
      :hypothesis => "MyString",
      :type => 1,
      :validity => 1,
      :problem => nil
    ))
  end

  it "renders new hypothesis form" do
    render

    assert_select "form[action=?][method=?]", hypotheses_path, "post" do

      assert_select "input[name=?]", "hypothesis[hypothesis]"

      assert_select "input[name=?]", "hypothesis[type]"

      assert_select "input[name=?]", "hypothesis[validity]"

      assert_select "input[name=?]", "hypothesis[problem_id]"
    end
  end
end
