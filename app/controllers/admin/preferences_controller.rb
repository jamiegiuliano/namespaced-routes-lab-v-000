class Admin::PreferencesController < ActionController::Base
  def index
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :song_sort_order, :artist_sort_order)
  end
end
