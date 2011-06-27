require 'spec_helper'

describe "despesas/show.html.erb" do
  before(:each) do
    @despesa = assign(:despesa, stub_model(Despesa,
      :descricao => "Descricao",
      :local => "Local",
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Local/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
