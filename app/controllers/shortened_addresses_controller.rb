class ShortenedAddressesController < ApplicationController
  def show
    original_address = OriginalAddress.find_by(token: params[:id])
    redirect_to original_address.original_url
  end
end
