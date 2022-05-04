class ChargesController < ApplicationController
  def create
        @pack = current_user.packs.create(reservation_params)
  end

  def new
    packs = Pack.find(params[:id])
  end
end
