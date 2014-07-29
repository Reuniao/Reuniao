require 'rails_helper'

RSpec.describe "pessoas/index", :type => :view do
  before(:each) do
    assign(:pessoas, [
      Pessoa.create!(
        :nome => "Nome",
        :cpf => 1,
        :uf => "Uf",
        :cidade => "Cidade",
        :endereco => "Endereco",
        :email => "Email",
        :matricula => 2
      ),
      Pessoa.create!(
        :nome => "Nome",
        :cpf => 1,
        :uf => "Uf",
        :cidade => "Cidade",
        :endereco => "Endereco",
        :email => "Email",
        :matricula => 2
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
