class SnapsController < ApplicationController
  def index
    @snaps = Snap.all
    @snap = Snap.new
  end

  def create
    Snap.create(snap_params)
    redirect_to snaps_path
  end

  private
  def snap_params
    params.require(:snap).permit(:image)
  end
end
