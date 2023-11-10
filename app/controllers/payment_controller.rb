class PaymentController < ApplicationController

  def show_payment_form
    render({:template => "payment_templates/payment_form"})
  end

  def calculate_payment
    @principal = params.fetch("user_pv").to_i
    @years = params.fetch("user_years").to_i
    @apr = params.fetch("user_apr").to_f
    @rate = @apr/100/12
    @numer = @principal*@rate
    @periods = @years*12

    @denom = 1-((1+@rate)**-@periods)
    @minus = (1+@rate)**-@periods
    @payment = @numer/@denom

  render({:template => "payment_templates/payment_results"})
  end

end
