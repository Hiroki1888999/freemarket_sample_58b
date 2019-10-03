FactoryBot.define do

  factory :user do
    email                 {"kkk@gmail.com"}
    encrypted_password    {"password"}
    reset_password_token  {"password"}
    nickname              {"taki"}
  end

end