class ChargesController < ApplicationController

  def new
    @license = License.find(params[:license_id])
  end

  def create
    # Amount in cents
    @amount = 15000

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

###############

# def create
#   @order = Order.new(order_params)
#   charge_error = nil
#
#   if @order.valid?
#     begin
#       customer = Stripe::Customer.create(
#         :email => 'example@stripe.com',
#         :card  => params[:stripeToken])
#
#       charge = Stripe::Charge.create(
#         :customer    => customer.id,
#         :amount      => 5000,
#         :description => 'Rails Stripe customer',
#         :currency    => 'usd')
#
#     rescue Stripe::CardError => e
#       charge_error = e.message
#     end
#     if charge_error
#       flash[:error] = charge_error
#       render :new
#     else
#       @order.save
#       redirect_to (successful page)
#     end
#   else
#     flash[:error] = 'one or more errors in your order'
#     render :new
#   end
# end
