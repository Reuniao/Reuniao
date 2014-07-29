require 'rails_helper'

RSpec.describe "pontos/show", :type => :view do
  before(:each) do
    @ponto = assign(:ponto, Ponto.create!(
      :titulo => "Titulo",
      :data => "Data",
      :status => "Status",
      :solucao => "Solucao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Data/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Solucao/)
  end
end
