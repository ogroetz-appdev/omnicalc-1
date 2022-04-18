class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end
  
  def square_results
    render({ :template => "calculation_templates/square_results.html.erb"})
  end


end
