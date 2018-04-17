class Admin::PreferencesController < ActionController::Base
  def index
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :song_sort_order, :artist_sort_order)
  end
end
