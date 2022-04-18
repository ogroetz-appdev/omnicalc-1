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
end
