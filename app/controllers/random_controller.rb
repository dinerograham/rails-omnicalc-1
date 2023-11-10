class RandomController < ApplicationController

def show_random_form
  render({:template => "random_templates/random_form"})
end

def pick_random
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f

  @ran_num = rand(@min.. @max)
  render({:template => "random_templates/random_results"})
end

end
