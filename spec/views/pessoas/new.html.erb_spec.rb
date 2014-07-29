require 'rails_helper'

RSpec.describe "pessoas/new", :type => :view do
  before(:each) do
    assign(:pessoa, Pessoa.new(
      :nome => "MyString",
      :cpf => 1,
      :uf => "MyString",
      :cidade => "MyString",
      :endereco => "MyString",
      :e-mail => "MyString",
      :matricula => 1
    ))
  end

  it "renders new pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoas_path, "post" do

      assert_select "input#pessoa_nome[name=?]", "pessoa[nome]"

      assert_select "input#pessoa_cpf[name=?]", "pessoa[cpf]"

      assert_select "input#pessoa_uf[name=?]", "pessoa[uf]"

      assert_select "input#pessoa_cidade[name=?]", "pessoa[cidade]"

      assert_select "input#pessoa_endereco[name=?]", "pessoa[endereco]"

      assert_select "input#pessoa_e-mail[name=?]", "pessoa[e-mail]"

      assert_select "input#pessoa_matricula[name=?]", "pessoa[matricula]"
    end
  end
end
