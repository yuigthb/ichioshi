class StaticPagesController < ApplicationController
  before_action :sign_in_required, only: [:show]
  
  def home
  end

  def about
  end

  def setting
  end

  def help
  end
  
  def show
    
    
  end
end
