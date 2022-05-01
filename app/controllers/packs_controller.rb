class PacksController < ApplicationController
  before_action :set_masjid
  before_action :set_pack, only: [:show, :edit, :update, :destroy]

  # GET masjids/1/packs
  def index
    @packs = @masjid.packs
  end

  # GET masjids/1/packs/1
  def show
  end

  # GET masjids/1/packs/new
  def new
    @pack = @masjid.packs.build
  end

  # GET masjids/1/packs/1/edit
  def edit
  end

  # POST masjids/1/packs
  def create
    @pack = @masjid.packs.build(pack_params)

    if @pack.save
      redirect_to([@pack.masjid, @pack], notice: 'Pack was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT masjids/1/packs/1
  def update
    if @pack.update_attributes(pack_params)
      redirect_to([@pack.masjid, @pack], notice: 'Pack was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE masjids/1/packs/1
  def destroy
    @pack.destroy

    redirect_to masjid_packs_url(@masjid)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masjid
      @masjid = Masjid.find(params[:masjid_id])
    end

    def set_pack
      @pack = @masjid.packs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pack_params
      params.require(:pack).permit(:name, :price, :masjid_id)
    end
end
