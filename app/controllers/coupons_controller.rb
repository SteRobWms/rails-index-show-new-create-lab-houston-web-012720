class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = current_coupon
    end

    def new
        @coupon = Coupon.new
    end

    def create
        byebug
        coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(coupon)
    end

    def current_coupon
        Coupon.find(params[:id])
    end

    private
    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

end
