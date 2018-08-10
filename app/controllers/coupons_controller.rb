class CouponsController < ApplicationController

  def new
  end

  def index
    @coupons = Coupon.all
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
    #byebug
  end

end
