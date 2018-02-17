require 'rails_helper'

RSpec.describe "papers/new", type: :view do
  before(:each) do
    assign(:paper, Paper.new(
      :title => "MyString",
      :content => "MyText",
      :user => nil
    ))
  end

  it "renders new paper form" do
    render

    assert_select "form[action=?][method=?]", papers_path, "post" do

      assert_select "input[name=?]", "paper[title]"

      assert_select "textarea[name=?]", "paper[content]"

      assert_select "input[name=?]", "paper[user_id]"
    end
  end
end
