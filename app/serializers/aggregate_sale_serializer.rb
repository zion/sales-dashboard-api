class AggregateSaleSerializer
    include JSONAPI::Serializer
  
    attributes :business_week, :total_sales, :total_cost, :total_qty

    set_type :aggregate_sale
    set_key_transform :dash
  end
  