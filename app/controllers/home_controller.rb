class HomeController < ApplicationController
    include Devise::Controllers::Helpers
  
    def index
      redirect_to categories_path if user_signed_in?
    end
  end
  