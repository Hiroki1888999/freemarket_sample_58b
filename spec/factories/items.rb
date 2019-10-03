FactoryBot.define do
  factory :item do

    name                      {"テストアイテム"}
    detail                    {"テスト品です"}
    shipping_cost             {2000}
    shipping_fee_charge_to    {1}
    shipping_days             {1}
    condition_id              {1}
    condition_id              {1}
    category_id               {1}
    trade_status_id           {1}
    brand_id                  {1}
    user_id                   {1}
    prefecture_id             {1}
  end
end