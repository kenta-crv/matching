class CompaniesController < ApplicationController
  #before_action :set_company, except: [:new, :create]

  def list
    @users = User.all
  end

  def show
  	@company = current_company
  end
end
