class ArticalsController < ApplicationController
  before_action :set_artical, only: [:show, :edit, :update, :destroy ]

  def show 
  end

  def index 
    @articals = Artical.all
  end

  def new
    @artical = Artical.new
  end

  def create
    @artical = Artical.new(artical_params)
    if @artical.save
      flash[:notice] = "sucsses."
     redirect_to artical_path(@artical)
    else 
      render 'new'
    end
  end

  def edit 
  end

  def update 
    if @artical.update(artical_params)
      flash[:notice] = "artical updated "
      redirect_to @artical
    else
      render "edit"
    end

  end

  def destroy
    @artical.destroy
      flash[:success] = 'Artical was successfully deleted.'
      redirect_to articals_path
    
  end

  private

  def set_artical
    @artical = Artical.find(params[:id])
  end

  def artical_params 
    params.require(:artical).permit(:title , :discription)
  end
  
  
  
end
