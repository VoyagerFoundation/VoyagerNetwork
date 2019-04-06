require 'rails_helper'

RSpec.describe "problems/show", type: :view do
  before(:each) do
    @problem = assign(:problem, Problem.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
