class SquareRootController < ApplicationController
  
  def show_sqrt_form
    render({:template => "square_root_templates/sqrt_form"})
  end

  def find_sqrt
    @square = params.fetch("number").to_f
    @root = @square**0.5

    render({:template => "square_root_templates/sqrt_results"})
  end
  
end
