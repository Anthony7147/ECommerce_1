class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :amount_to_be_charged
  def new
  end

  def create
  	@amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source => params[:stripeToken]
    )

 charge = Stripe::Charge.create(
    :customer => customer.id,
    :amount => @amount,
    :description => 'Rails Stripe customer',
    :currency => 'usd'
    )
 
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

def thanks
  end

private

  def description
    @description = "Some amazing product"
  end
  
  def amount_to_be_charged
    @amount = 500
  end
end
