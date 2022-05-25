# frozen_string_literal: true

class DailyItemSalesController < ApplicationController
  def aggregate_sales
    # sort params
    sort_column = params[:sort]
    sort_column ||= 'total_sales'
    sort_direction = params[:sort_direction]
    sort_direction ||= 'DESC'
    # execute SQL query
    @sales = ActiveRecord::Base.connection.execute("SELECT DATE_TRUNC(\'week\', business_day::timestamp) business_week, SUM(total_sales) total_sales, SUM(total_cost) total_cost, SUM(total_qty) total_qty FROM daily_item_sales as sales GROUP BY business_week ORDER BY #{sort_column} #{sort_direction};")
    # Map results to model
    @aggregate_sales = @sales.map { |sale| AggregateSale.new(sale) }
    # render serialized models
    render json: AggregateSaleSerializer.new(@aggregate_sales)
  end
end
