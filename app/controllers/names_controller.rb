class NamesController < ApplicationController

  def form
    if permitted_params[:name]
      @names = NameApi.get_frequency(permitted_params[:name])
    else
      @names = []
    end
  end # #name

  protected

  def permitted_params()
    if params.present?
      params.permit(:name)
    else
      {}
    end
  end # #permitted_params

end
