require 'rails_helper'

RSpec.describe "pontos/new", :type => :view do
  before(:each) do
    assign(:ponto, Ponto.new(
      :titulo => "MyString",
      :data => "MyString",
      :status => "MyString",
      :solucao => "MyString"
    ))
  end

  it "renders new ponto form" do
    render

    assert_select "form[action=?][method=?]", pontos_path, "post" do

      assert_select "input#ponto_titulo[name=?]", "ponto[titulo]"

      assert_select "input#ponto_data[name=?]", "ponto[data]"

      assert_select "input#ponto_status[name=?]", "ponto[status]"

      assert_select "input#ponto_solucao[name=?]", "ponto[solucao]"
    end
  end
end
