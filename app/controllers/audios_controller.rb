class AudiosController < ApplicationController
  def index
  end

  def show
    
  end

  def new
    @title = "New Audio"
    @audio = Audio.new
  end

  def create
    @audio = Audio.new(params[:audio])
    if @audio.save
      redirect_to myaudios_audios_path
      flash[:notice] = "Music has been add"
    else
      render 'new'
    end
  end

  def edit
    @audio = Audio.find(params[:id])
  end

  def update
    @audio = Audio.find(params[:id])
    if @audio.update_attributes(params[:audio])
      redirect_to myaudios_audios_path
    else
      render 'edit'
    end
  end

  def myaudios
    @title = "My Audio"
    @all =
    @audios = Audio.page(params[:page],:conditions => {:user_id => current_user.id}).per(4)
  end
end
