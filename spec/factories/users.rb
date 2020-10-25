FactoryBot.define do

  factory :user do
    password = Faker::Internet.password(min_length: 8)
    id                                 {"1"}
    name                               {"ヒロ"}
    email                              {"hiro@example.com"}
    encrypted_password                 {"asdf1234"}
    password                           {"asdf1234"}
  end

end