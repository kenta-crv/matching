class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :set_mypage
    #before_action :set_mypage, except: [:new, :create]
    #def has_mypage?
    #  if current_user.mypages.count < 1
    #    redirect_to new_mypage_path
    #    return false
    #  end
    #end

    def set_mypage
        @current_mypage = current_user.mypage
        if @current_mypage.blank?
            redirect_to new_mypage_path
            return false
        end
    end

    def current_mypage
       @current_mypage
    end


end
