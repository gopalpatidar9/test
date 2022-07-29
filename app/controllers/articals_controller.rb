class ArticalsController < ApplicationController
  before_action :set_artical, only: [:show, :edit, :update, :destroy ]

  def show 
  end

  def index 
    @articals = Artical.all.order(created_at: :desc)
  end

  def new
    @artical = Artical.new
  end

  def create
    @artical = Artical.new(artical_params)
    if @artical.save
      flash[:notice] = "Article was successfully Created."
     redirect_to artical_path(@artical)
    else 
      render 'new'
    end
  end

  def edit 
  end

  def update 
    if @artical.update(artical_params)
      flash[:notice] = "Article was successfully updated "
      redirect_to @artical
    else
      render "edit"
    end

  end

  def destroy
    @artical.destroy
      flash[:success] = 'Article was successfully deleted.'
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
