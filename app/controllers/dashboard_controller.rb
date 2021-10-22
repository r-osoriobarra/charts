class DashboardController < ApplicationController
  def index
    #for montly sales charts
    @montly_sales_12 = Sale.group_by_month(:created_at, range: 1.year.ago..Time.now).sum(:total)
    @montly_sales_amount_12 = Sale.group_by_month(:created_at, range: 1.year.ago..Time.now).count
    @montly_avg_sales_12 = Sale.group_by_month(:created_at, range: 1.year.ago..Time.now).sum(:total)

    #for pie charts by origin
    @sales_amount_kofi_origin_12 = Kofi.joins(:sales).where('sales.created_at > ? ', 1.year.ago).group(:origin).count
    @sales_amount_kofi_origin_6 = Kofi.joins(:sales).where('sales.created_at > ? ', 6.month.ago).group(:origin).count
    @sales_amount_kofi_origin_3 = Kofi.joins(:sales).where('sales.created_at > ? ', 3.month.ago).group(:origin).count
    @sales_amount_kofi_origin_1 = Kofi.joins(:sales).where('sales.created_at > ? ', 1.month.ago).group(:origin).count

    #for pie charts by blend
    @sales_amount_kofi_blend_12 = Kofi.joins(:sales).where('sales.created_at > ? ', 1.year.ago).group(:blend).count
    @sales_amount_kofi_blend_6 = Kofi.joins(:sales).where('sales.created_at > ? ', 6.month.ago).group(:blend).count
    @sales_amount_kofi_blend_3 = Kofi.joins(:sales).where('sales.created_at > ? ', 3.month.ago).group(:blend).count
    @sales_amount_kofi_blend_1 = Kofi.joins(:sales).where('sales.created_at > ? ', 1.month.ago).group(:blend).count
  end
end
