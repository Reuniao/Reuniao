require 'rails_helper'

RSpec.describe "pessoas/edit", :type => :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
      :nome => "MyString",
      :cpf => 1,
      :uf => "MyString",
      :cidade => "MyString",
      :endereco => "MyString",
      :email => "MyString",
      :matricula => 1
    ))
  end

  it "renders the edit pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoa_path(@pessoa), "post" do

      assert_select "input#pessoa_nome[name=?]", "pessoa[nome]"

      assert_select "input#pessoa_cpf[name=?]", "pessoa[cpf]"

      assert_select "input#pessoa_uf[name=?]", "pessoa[uf]"

      assert_select "input#pessoa_cidade[name=?]", "pessoa[cidade]"

      assert_select "input#pessoa_endereco[name=?]", "pessoa[endereco]"

      assert_select "input#pessoa_email[name=?]", "pessoa[email]"

      assert_select "input#pessoa_matricula[name=?]", "pessoa[matricula]"
    end
  end
end
