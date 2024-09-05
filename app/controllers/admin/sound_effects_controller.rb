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

  def sound_effect_params
    params.require(:sound_effect).permit(:sound_effect_name,:sound_effect_details,:is_active,:file)
  end

end
