class GuessByAppearanceController < ApplicationController

  def show
  end

  def new
    @guess_by_appearance = GuessByAppearance.random
  end

  def create
    if guess_params[:answer] == guess_params[:guess]
      redirect_to new_guess_by_appearance_url,
        notice: 'Correct!'
    else
      redirect_to :back, notice: "That's NOT my name!"
    end
  end

  private

  def guess_params
    params.permit(:answer, :guess)
  end
end
