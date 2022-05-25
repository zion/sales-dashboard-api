class AggregateSale
    attr_accessor :id, :business_week, :total_cost, :total_qty, :total_sales
    def initialize(args)
        args = args.symbolize_keys
        @id = args[:business_week].strftime('%Y%m%d')
        @business_week = args[:business_week]
        @total_cost = args[:total_cost]
        @total_sales = args[:total_sales]
        @total_qty = args[:total_qty]
    end
end