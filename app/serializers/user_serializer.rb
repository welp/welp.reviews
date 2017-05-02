class UserSerializer < ApplicationSerializer
  attributes :id, :username, :city, :name, :nickname, :tagline, :things_i_love,
    :find_me_in, :hometown, :website, :when_im_not_welping,
    :second_favorite_site, :last_book_i_read, :first_concert, :favorite_movie,
    :last_meal_on_earth, :dont_tell_anyone_but, :most_recent_discovery,
    :current_crush, :language

  delegate :name, :nickname, :tagline, :hometown, :website, :second_favorite_site,
    :first_concert, :favorite_movie, :language, to: :profile

  def things_i_love
    profile.loves
  end

  def find_me_in
    profile.find_in
  end

  def when_im_not_welping
    profile.when_not_welping
  end

  def last_book_i_read
    profile.last_book
  end

  def last_meal_on_earth
    profile.last_meal
  end

  def dont_tell_anyone_but
    profile.secret
  end

  def most_recent_discovery
    profile.recent_discovery
  end

  def current_crush
    profile.crush
  end

  def profile
    object.user_profile
  end
end
