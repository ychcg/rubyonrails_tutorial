class HomeController < ApplicationController
  def form
  end

  def next
	 @data = params[:data_1]
  end
end