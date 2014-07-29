require 'rails_helper'

RSpec.describe "locals/new", :type => :view do
  before(:each) do
    assign(:local, Local.new(
      :uf => "MyString",
      :cidade => "MyString",
      :endereco => "MyString",
      :complemento => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new local form" do
    render

    assert_select "form[action=?][method=?]", locals_path, "post" do

      assert_select "input#local_uf[name=?]", "local[uf]"

      assert_select "input#local_cidade[name=?]", "local[cidade]"

      assert_select "input#local_endereco[name=?]", "local[endereco]"

      assert_select "input#local_complemento[name=?]", "local[complemento]"

      assert_select "input#local_status[name=?]", "local[status]"
    end
  end
end
