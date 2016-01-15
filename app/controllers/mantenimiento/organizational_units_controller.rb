class Mantenimiento::OrganizationalUnitsController < ApplicationController
  def index
    
  end

  def show
  end

  def new
    @user=OrganizationalUnit.new
  end

  def create
    @user=OrganizationalUnit.new(ouparameters)
    if @user.save
      redirect_to :action=>"index"
    else 
      redirect_to :action=>"new"  
    end
      
  end

  def edit
  end

  def update
  end

  def delete
    
  end
  
  private
  
  def ouparameters 
    params.require(:organizational_units).permit(:code)  
  end
end
