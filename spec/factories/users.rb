FactoryBot.define do
  factory :user do
    nickname              { 'Faker::Name.name' }
    profession            { 'ITエンジニア' }
    feature1              { 'IT業界未経験' }
    feature2              { '30代' }
    email                 { Faker::Internet.free_email }
    password              { 'abc1234' }
    password_confirmation { 'abc1234' }
    last_name             { '凛' }
    first_name            { '岡絵' }
    last_name_reading     { 'リン' }
    first_name_reading    { 'オカエ' }
    birthday              { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
