class Api::V1::BackgroundsController < ApplicationController

  def show
    render json: BackgroundFacade.new(params[:location]).get_background
  end

end
