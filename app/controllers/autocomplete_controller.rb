class AutocompleteController < ApplicationController
  def acs
    if params[:term]
      acs = Aircraft.where("lower(code) like ?", '%'+params[:term]+'%'.downcase)
    end
    list = acs.map {|u| Hash[id: u.code, label: u.code, name: u.code]}
    render json: list
  end
end
