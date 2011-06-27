require 'spec_helper'

describe "despesas/new.html.erb" do
  before(:each) do
    assign(:despesa, stub_model(Despesa,
      :descricao => "MyString",
      :local => "MyString",
      :valor => "9.99"
    ).as_new_record)
  end

  it "renders new despesa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => despesas_path, :method => "post" do
      assert_select "input#despesa_descricao", :name => "despesa[descricao]"
      assert_select "input#despesa_local", :name => "despesa[local]"
      assert_select "input#despesa_valor", :name => "despesa[valor]"
    end
  end
end
