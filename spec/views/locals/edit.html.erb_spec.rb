require 'rails_helper'

RSpec.describe "locals/edit", :type => :view do
  before(:each) do
    @local = assign(:local, Local.create!(
      :uf => "MyString",
      :cidade => "MyString",
      :endereco => "MyString",
      :complemento => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit local form" do
    render

    assert_select "form[action=?][method=?]", local_path(@local), "post" do

      assert_select "input#local_uf[name=?]", "local[uf]"

      assert_select "input#local_cidade[name=?]", "local[cidade]"

      assert_select "input#local_endereco[name=?]", "local[endereco]"

      assert_select "input#local_complemento[name=?]", "local[complemento]"

      assert_select "input#local_status[name=?]", "local[status]"
    end
  end
end
