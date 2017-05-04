Types::User = GraphQL::ObjectType.define do
  name 'User'
  description 'A registered user in the Welp system.'

  field :id, !types.Int, "The User's unique identifier."
  field :username, !types.String, "The User's unique (and human-readable) username."

  field :reviews, !types[Types::Review] do
    description 'A list of Reviews left by this User.'

    argument :page, types.Int, 'Which page of reviews you would like.', default_value: 1
    argument :perPage, types.Int, 'How many reviews you would like per page.', default_value: 25

    resolve -> (user, arguments, context) {
      user.reviews.page(arguments[:page]).per(arguments[:perPage])
    }
  end

  # All of the associated UserProfile fields. Let's just include them here; no
  # need to subject the client to our internal implementation details.
  field :name, types.String, '' do
    resolve -> (user, arguments, context) {
      user.profile.name
    }
  end

  field :nickname, types.String, "This User's nickname." do
    resolve -> (user, arguments, context) {
      user.profile.nickname
    }
  end

  field :tagline, types.String, "This User's tagline." do
    resolve -> (user, arguments, context) {
      user.profile.tagline
    }
  end

  field :thingsILove, types[types.String], 'Things this User loves.' do
    resolve -> (user, arguments, context) {
      if user.profile.loves.present?
        user.profile.loves.split(',').map(&:trim)
      else
        []
      end
    }
  end

  field :findMeIn, types.String, 'Where you can usually find this User.' do
    resolve -> (user, arguments, context) {
      user.profile.find_in
    }
  end

  field :hometown, types.String, 'Where this User hails from.' do
    resolve -> (user, arguments, context) {
      user.profile.hometown
    }
  end

  field :website, Types::URI, "This User's personal website." do
    resolve -> (user, arguments, context) {
      user.profile.website
    }
  end

  field :whenImNotWelping, types.String, "What this User does when they aren't on welp.reviews" do
    resolve -> (user, arguments, context) {
      user.profile.when_not_welping
    }
  end

  field :secondFavoriteSite, Types::URI, "This User's favorite site that isn't welp.reviews" do
    resolve -> (user, arguments, context) {
      user.profile.second_favorite_site
    }
  end

  field :lastReadBook, types.String, 'The last book this User read.' do
    resolve -> (user, arguments, context) {
      user.profile.last_book
    }
  end

  field :firstConcert, types.String, 'The first concert this User ever attended.' do
    resolve -> (user, arguments, context) {
      user.profile.first_concert
    }
  end

  field :favoriteMovie, types.String, "This User's favorite movie." do
    resolve -> (user, arguments, context) {
      user.profile.favorite_movie
    }
  end

  field :lastMealOnEarth, types.String, 'What this User will eat right before the coming apocalypse.' do
    resolve -> (user, arguments, context) {
      user.profile.last_meal
    }
  end

  field :biggestSecret, types.String, "This User's biggest secret." do
    resolve -> (user, arguments, context) {
      user.profile.secret
    }
  end

  field :mostRecentDiscovery, types.String, "This User's most recent awesome discovery." do
    resolve -> (user, arguments, context) {
      user.profile.recent_discovery
    }
  end

  field :currentCrush, types.String, 'Who or what this User is crushing on.' do
    resolve -> (user, arguments, context) {
      user.profile.crush
    }
  end

  field :language, types.String, 'What language this User speaks.' do
    resolve -> (user, arguments, context) {
      user.profile.language
    }
  end
end
