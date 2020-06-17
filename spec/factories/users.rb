FactoryGirl.define do
    sequence :email do |n|
        "mail#{n}@mail.com"
    end

    factory :user do
        first_name "john"
        last_name "Doe"
        email {generate :email}
        password "password"
        password_confirmation "password"
        
    end

    factory :admin_user, class: "AdminUser" do
        first_name "Admin"
        last_name "User"
        email {generate :email}
        password "password"
        password_confirmation "password"
    end
end