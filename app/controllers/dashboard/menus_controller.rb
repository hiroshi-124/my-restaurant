class Dashboard::MenusController < ApplicationController
  layout 'dashboard/dashboard'
  before_action :authenticate_admin!
  before_action :set_menu, only: %i[edit update destroy]
  
  def index
    @menus = Menu.all
  end
  
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to dashboard_menus_path, notice: 'menu was successfully created.'
    else
      render :new, notice: 'Save error.'
    end
  end
  
  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to dashboard_menus_path, notice: 'menu was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @menu.destroy
    redirect_to dashboard_menus_path, notice: 'menu was successfully destroyed.'
  end
  
   private
    def set_menu
      @menu = Menu.find(params[:id])
    end
    
    def menu_params
      params.require(:menu).permit(:name, :price, :description, :kcal, :image)
    end
end
