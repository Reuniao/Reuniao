require 'rails_helper'

RSpec.describe "pontos/edit", :type => :view do
  before(:each) do
    @ponto = assign(:ponto, Ponto.create!(
      :titulo => "MyString",
      :data => "MyString",
      :status => "MyString",
      :solucao => "MyString"
    ))
  end

  it "renders the edit ponto form" do
    render

    assert_select "form[action=?][method=?]", ponto_path(@ponto), "post" do

      assert_select "input#ponto_titulo[name=?]", "ponto[titulo]"

      assert_select "input#ponto_data[name=?]", "ponto[data]"

      assert_select "input#ponto_status[name=?]", "ponto[status]"

      assert_select "input#ponto_solucao[name=?]", "ponto[solucao]"
    end
  end
end
