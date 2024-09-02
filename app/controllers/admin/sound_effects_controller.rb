class Admin::SoundEffectsController < ApplicationController
  def index
    @sound_effects 
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def soundeffect_params
    params.require(:soundeffect).permit(:sound_effect_name,:sound_effect_details,:is_active,:file)
  end

end
