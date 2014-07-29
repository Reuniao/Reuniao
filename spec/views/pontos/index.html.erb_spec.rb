require 'rails_helper'

RSpec.describe "pontos/index", :type => :view do
  before(:each) do
    assign(:pontos, [
      Ponto.create!(
        :titulo => "Titulo",
        :data => "Data",
        :status => "Status",
        :solucao => "Solucao"
      ),
      Ponto.create!(
        :titulo => "Titulo",
        :data => "Data",
        :status => "Status",
        :solucao => "Solucao"
      )
    ])
  end

  it "renders a list of pontos" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Solucao".to_s, :count => 2
  end
end
