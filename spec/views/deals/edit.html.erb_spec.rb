require 'spec_helper'

describe "deals/edit" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :user_id => 1,
      :followers_count => 1,
      :amount_to_raise => "9.99",
      :name => "MyString",
      :state => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit deal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", deal_path(@deal), "post" do
      assert_select "input#deal_user_id[name=?]", "deal[user_id]"
      assert_select "input#deal_followers_count[name=?]", "deal[followers_count]"
      assert_select "input#deal_amount_to_raise[name=?]", "deal[amount_to_raise]"
      assert_select "input#deal_name[name=?]", "deal[name]"
      assert_select "input#deal_state[name=?]", "deal[state]"
      assert_select "input#deal_description[name=?]", "deal[description]"
    end
  end
end
