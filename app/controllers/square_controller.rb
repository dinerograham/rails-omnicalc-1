class SquareController < ApplicationController
  
  def show_square_form
    render({:template => "square_templates/square_form"})
  end

  def square_this
    @number = params.fetch("root").to_f
    @squared = @number**2
    render({:template => "square_templates/square_results"})
  end

end
