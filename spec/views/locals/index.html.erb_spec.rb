require 'rails_helper'

RSpec.describe "locals/index", :type => :view do
  before(:each) do
    assign(:locals, [
      Local.create!(
        :uf => "Uf",
        :cidade => "Cidade",
        :endereco => "Endereco",
        :complemento => "Complemento",
        :status => "Status"
      ),
      Local.create!(
        :uf => "Uf",
        :cidade => "Cidade",
        :endereco => "Endereco",
        :complemento => "Complemento",
        :status => "Status"
      )
    ])
  end

  it "renders a list of locals" do
    render
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
