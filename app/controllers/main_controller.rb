class MainController < ApplicationController
    before_action :authenticate_management!
    before_action :set_company
    #before_action :set_mypage, except: [:new, :create]
    #def has_mypage?
    #  if current_user.mypages.count < 1
    #    redirect_to new_mypage_path
    #    return false
    #  end
    #end

    def set_company
        @current_company = current_management.company
        if @current_company.blank?
            redirect_to new_company_path
            return false
        end
    end

    def current_company
       @current_company
    end


end
