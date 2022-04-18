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

  def random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def calculate_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_number = rand(@min..@max)
    render({ :template => "calculation_templates/random_results.html.erb" })
  end

  def square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb" })
  end

  def calculate_square_root
    @num = params.fetch("number").to_i
    @num_square_root = (Math.sqrt(@num))
    
    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end

end
