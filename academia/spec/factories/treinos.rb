# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :treino do
    datainicio "2013-07-15"
    objetivo "MyString"
    aluno nil
  end
end
