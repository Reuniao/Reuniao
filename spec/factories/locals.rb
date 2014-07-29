# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :local do
    uf "MyString"
    cidade "MyString"
    endereco "MyString"
    complemento "MyString"
    status "MyString"
  end
end
