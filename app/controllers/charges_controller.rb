class ChargesController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
  	@amount = 500

  customer = StripeTool.create_customer(email: params[:stripeEmail],
                                      stripe_token: params[:stripeToken])

  charge = StripeTool.create_charge(customer_id: customer.id,
                                  amount: @amount,
                                  description: @description)
  redirect_to thanks_path
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

def thanks
  end

private

  def description
    @description = "SOme amazing product"
  end
  
  def amount_to_be_charged
    @amount = 500
  end
end
