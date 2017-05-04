unless User.exists?(username: 'davidcelis')
  davidcelis = User.find_or_create_by({
    username: 'davidcelis',
    email: 'davidcelis@github.com',
    city: 'Portland, OR'
  })

  davidcelis.create_user_profile({
    name: 'David Celis',
    tagline: '\No newline at end of review',
    loves: 'meat, sushi, dogs, bikes, piano, Owen Pallett, the internet, programming, espresso',
    find_in: 'The Dekum Triangle',
    hometown: 'Rochester, MN',
    website: 'https://davidcel.is/',
    when_not_welping: 'I break things at GitHub',
    second_favorite_site: 'https://github.com/',
    last_book: 'This Is How You Lose Her',
    first_concert: 'The Decemberists',
    favorite_movie: '2001: A Space Odyssey',
    last_meal: 'A CHEESEBURGER',
    secret: "Welp isn't real, please don't sue us we just wanted to do a funny parody",
    recent_discovery: 'Sunshine Dairy',
    crush: 'GraphQL',
    language: 'English'
  })
end

unless User.exists?(username: 'gjtorikian')
  gjtorikian = User.find_or_create_by({
    username: 'gjtorikian',
    email: 'gjtorikian@github.com',
    city: 'Brooklyn, NY'
  })

  gjtorikian.create_user_profile({
    name: 'Garen Torikian',
    tagline: 'I inhale and exhale.',
    loves: 'Filling out arbitrary forms.',
    find_in: 'Brooklyn, NY',
    hometown: 'San Francisco, CA',
    when_not_welping: "I'm weeping.",
    last_book: 'Ulysses',
    first_concert: 'Ska, probably',
    favorite_movie: 'Anything with time travel',
    last_meal: 'A salmon sandwich',
    secret: "I wasted half my life on the thought that I'd live forever",
    crush: 'Nah, Fanta',
    language: 'Armenian'
  })
end
