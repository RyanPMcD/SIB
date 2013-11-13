class NamesController < ApplicationController
  def show
    if record = User.find_by(id: params[:id])
      @name = record.name
    else
      @name = 'unknown'
    end

    render json: { :name => @name }
  end
end
