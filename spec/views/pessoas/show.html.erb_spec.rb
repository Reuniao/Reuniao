require 'rails_helper'

RSpec.describe "pessoas/show", :type => :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
      :nome => "Nome",
      :cpf => 1,
      :uf => "Uf",
      :cidade => "Cidade",
      :endereco => "Endereco",
      :e-mail => "E Mail",
      :matricula => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/E Mail/)
    expect(rendered).to match(/2/)
  end
end
