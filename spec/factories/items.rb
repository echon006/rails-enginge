FactoryBot.define do
  factory :item do
    name { Faker::Games::DnD.melee_weapon}
    description { Faker::Movies::HarryPotter.quote}
    unit_price { Faker::Number.decimal(l_digits: 3, r_digits: 3)}
    merchant
  end
end
