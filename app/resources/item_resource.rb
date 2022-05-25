class ItemResource < JSONAPI::Resource
    attributes :description
    has_many :daily_item_sales
end