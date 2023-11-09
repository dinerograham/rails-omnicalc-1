Rails.application.routes.draw do
  
  get("/", {:controller => "square", :action => "show_square_form"})

  get("/square/new", {:controller => "square", :action => "show_square_form"})
  get("/square/results", {:controller => "square", :action => "square_this"})

  get("/square_root/new", {:controller => "square_root", :action => "show_sqrt_form"})
  get("/square_root/results", {:controller => "square_root", :action => "find_sqrt"})

  get("/payment/new", {:controller => "payment", :action => "show_payment_form"})
  get("/payment/results", {:controller => "payment", :action => "calculate_payment"})

  get("/random/new", {:controller =>"random", :action => "show_random_form"})
  get("/random/results", {:controller =>"random", :action => "pick_random"})
end
