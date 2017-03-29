class AircraftsController < ApplicationController
  def index
    @aircraft = Aircraft.new
  end

  def from_code
    @selected = Aircraft.where('lower(code) = ?', params[:aircraft][:code].downcase).first
    respond_to do |format|
      format.js
    end
  end
end
