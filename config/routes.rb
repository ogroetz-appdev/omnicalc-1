Rails.application.routes.draw do

get("/square/new", { :controller => "application", :action => "blank_square_form" })
get("/square/results", { :controller => "application", :action => "calculate_square" })

get("/square_root/new", { :controller => "application", :action => "square_root_form" })
get("/square_root/results", { :controller => "application", :action => "calculate_square_root" })

get("/random/new", { :controller => "application", :action => "random_form" })
get("/random/results", { :controller => "application", :action => "calculate_random" })

end
