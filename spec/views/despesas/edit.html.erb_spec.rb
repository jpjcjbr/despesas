require 'spec_helper'

describe "despesas/edit.html.erb" do
  before(:each) do
    @despesa = assign(:despesa, stub_model(Despesa,
      :descricao => "MyString",
      :local => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders the edit despesa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => despesas_path(@despesa), :method => "post" do
      assert_select "input#despesa_descricao", :name => "despesa[descricao]"
      assert_select "input#despesa_local", :name => "despesa[local]"
      assert_select "input#despesa_valor", :name => "despesa[valor]"
    end
  end
end
