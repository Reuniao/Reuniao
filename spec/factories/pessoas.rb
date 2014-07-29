# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoa do
    nome "MyString"
    cpf 1
    uf "MyString"
    cidade "MyString"
    endereco "MyString"
    e-mail "MyString"
    matricula 1
  end
end
