class GuessByAppearanceController < ApplicationController

  def retry
    @guess_by_appearance = GuessByAppearance.retry_for guess_params[:answer]
    render 'new'
  end

  def new
    @guess_by_appearance = GuessByAppearance.random
  end

  def create
    if guess_params[:answer] == guess_params[:guess]
      redirect_to new_guess_by_appearance_url,
        notice: 'Correct!'
    else
      redirect_to guess_by_appearance_retry_path(answer: guess_params[:answer]),
        notice: "That's NOT my name!"
    end
  end

  private

  def guess_params
    params.permit(:answer, :guess)
  end
end
