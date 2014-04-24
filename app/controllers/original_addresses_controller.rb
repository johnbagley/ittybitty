class OriginalAddressesController < ApplicationController
  def index
    @original_address = OriginalAddress.new
    @original_addresses = OriginalAddress.all
  end

  def create
    original_address = OriginalAddress.create(original_address_params)
    redirect_to original_address
  end

  def show
    @original_address = OriginalAddress.find_by(token: params[:id])
  end

  private

  def original_address_params
    params.require(:original_address).permit(:original_url)
  end
end
