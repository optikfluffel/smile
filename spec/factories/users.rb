FactoryGirl.define do

  factory :user do
    username 'user'
    email 'user@example.com'
    password 'please'
    password_confirmation 'please'
    # required if the Devise Confirmable module is used
    confirmed_at Time.now
  end

  factory :other_user, :class => User do
    username 'otheruser'
    email 'other@example.com'
    password 'justdoit'
    password_confirmation 'justdoit'
    # required if the Devise Confirmable module is used
    confirmed_at Time.now
  end

end
