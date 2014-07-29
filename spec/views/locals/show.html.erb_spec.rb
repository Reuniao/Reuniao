require 'rails_helper'

RSpec.describe "locals/show", :type => :view do
  before(:each) do
    @local = assign(:local, Local.create!(
      :uf => "Uf",
      :cidade => "Cidade",
      :endereco => "Endereco",
      :complemento => "Complemento",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Complemento/)
    expect(rendered).to match(/Status/)
  end
end
