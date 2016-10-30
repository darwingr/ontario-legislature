FactoryGirl.define do
  factory :member do
    first_name 'John'
    last_name 'Yakabuski'
    middle_name ''
    title ''
    riding 'Renfrew—Nipissing—Pembroke'
  end

  factory :liberal_member, parent: :member do
    first_name 'Kathleen'
    last_name 'Wynne'
    riding 'Don Valley West'
  end

  factory :ndp_member, parent: :member do
    first_name 'Andrea'
    last_name 'Horwath'
    riding 'Hamilton Centre'
  end
end
