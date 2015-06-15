class ChargesController < ApplicationController
end


def create

	customer = Stripe::Customer.create(
		:email => current_student.email,
		:card => params[:stripeToken]
		)
	
	charge = Stripe::Charge.create(
		:customer => customer.id,
		:description => 'Rails Bookstore Customer charge',
		:currency => 'usd',
		:amount => session[:total_charges].to_i
		)
end