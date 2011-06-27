require 'spec_helper'

describe "despesas/index.html.erb" do
  before(:each) do
    assign(:despesas, [
      stub_model(Despesa,
        :descricao => "Descricao",
        :local => "Local",
        :valor => "9.99"
      ),
      stub_model(Despesa,
        :descricao => "Descricao",
        :local => "Local",
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of despesas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
