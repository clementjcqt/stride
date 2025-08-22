class ProfilesController < ApplicationController
  before_action :authenticate_user!

    def show
      @user = current_user
    end

  def edit
    @user = current_user
  end

  def update
  @user = current_user

    if params[:user][:conditions].present?
      params[:user][:conditions] = params[:user][:conditions].split(',').map(&:strip)
    end

    if params[:user][:availability].present?
      if params[:user][:availability].is_a?(String)
        params[:user][:availability] = params[:user][:availability].split(',').map(&:strip)
      end
      # si c'est déjà un Array, on peut éventuellement nettoyer les valeurs vides :
      params[:user][:availability].reject!(&:blank?) if params[:user][:availability].is_a?(Array)
    end


    if @user.update(user_params)
      redirect_to profile_path, notice: "Profil mis à jour avec succès !"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :age, :gender,
      :weight, :height, :level,
      conditions: [], availability: []
    )
  end
end
