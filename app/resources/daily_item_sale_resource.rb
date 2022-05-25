class DailyItemSaleResource < JSONAPI::Resource
    attributes :business_day, :total_qty, :total_cost, :total_sales
    has_one :item
end