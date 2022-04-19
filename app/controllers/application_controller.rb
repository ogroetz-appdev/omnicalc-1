class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    # params ==>  Parameters: {"number"=>"42"}
    @num = params.fetch("number").to_f
    @num_squared = (@num ** 2).round(4)
    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb" })
  end

  def calculate_square_root
    @num = params.fetch("number").to_f
    @num_square_root = (Math.sqrt(@num))

    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end

  def payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def calculate_payment
    apr = (params.fetch("user_apr").to_f).round(4)
    @apr = apr.to_s(:percentage, { :precision => 4 })
    @num_years = params.fetch("user_years")
    principal = params.fetch("user_pv").to_f
    @principal = principal.to_s(:currency)

    # n = 48
    num_of_periods = @num_years.to_i * 12 
    # apr = .07
    apr_percentage = apr / 100
    # r = 0.005833333333333334
    percentage_per_period = apr_percentage / 12
    numerator =  percentage_per_period * principal
    # p numerator
    denominator = 1 - ((1 + percentage_per_period) ** -(num_of_periods))
    # p denominator
    # p numerator / denominator
    @payment = (numerator / denominator).to_s(:currency)

    render({ :template => "calculation_templates/payment_results.html.erb" })
  end

  def random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def calculate_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_number = rand(@min..@max)
    render({ :template => "calculation_templates/random_results.html.erb" })
  end
end
