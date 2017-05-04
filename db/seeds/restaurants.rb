unless Restaurant.where(name: 'Expatriate').exists?
  expatriate = Restaurant.create({
    name: 'Expatriate',
    price: 2,
    url: 'http://expatriatepdx.com/info/',
    menu_url: 'http://expatriatepdx.com/cocktails/',
    address: '5424 NE 30th Ave, Portland, OR 97211',
    phone: '+1 (503) 867-5309',
    hours: '5pm-12am Daily, 10am-2pm Saturday and Sunday',
    primary_category: Category.find_by(name: 'Cocktail Bars'),
    secondary_category: Category.find_by(name: 'Bars')
  })

  expatriate.create_restaurant_info({
    reservations: false,
    delivery: false,
    takeout: false,
    credit_cards: true,
    good_for: ['Late Night'],
    parking: ['Street'],
    bike_parking: true,
    wheelchair_accessible: true,
    good_for_kids: false,
    good_for_groups: true,
    attire: 'Casual',
    ambience: ['Hipster', 'Intimate'],
    noise_level: 'Average',
    alcohol: 'Full Bar',
    happy_hour: false,
    best_nights: ['Thursday', 'Friday', 'Saturday'],
    smoking: false,
    outdoor_seating: false,
    wifi: 'None',
    television: false,
    dog_friendly: false,
    caters: false,
    gender_neutral_restrooms: true
  })
end

unless Restaurant.where(name: 'La Taq').exists?
  la_taq = Restaurant.create({
    name: 'La Taq',
    price: 2,
    url: 'http://lataqpdx.com',
    menu_url: 'http://lataqpdx.com/la-taq-food-menu/',
    address: '1625 NE Killingsworth St, Portland, OR 97211',
    phone: '+1 (971) 888-5687',
    hours: '5pm-11pm Monday-Thursday, 5pm-12am Friday, 3pm-12am Saturday, 3pm-11pm Sunday',
    primary_category: Category.find_by(name: 'Mexican'),
    secondary_category: Category.find_by(name: 'Tex-Mex'),
    tertiary_category: Category.find_by(name: 'Bars')
  })

  la_taq.create_restaurant_info({
    reservations: false,
    delivery: false,
    takeout: true,
    credit_cards: true,
    good_for: ['Dinner', 'Late Night'],
    parking: ['Street'],
    bike_parking: true,
    good_for_kids: false,
    good_for_groups: false,
    attire: 'Casual',
    ambience: ['Hipster'],
    noise_level: 'Average',
    alcohol: 'Full Bar',
    happy_hour: true,
    best_nights: ['Saturday', 'Sunday'],
    smoking: false,
    outdoor_seating: true,
    wifi: 'None',
    television: false,
    caters: false,
    gender_neutral_restrooms: true
  })
end

unless Restaurant.where(name: 'Handsome Pizza').exists?
  handsome_pizza = Restaurant.create({
    name: 'Handsome Pizza',
    price: 2,
    url: 'http://www.handsomepizza.com',
    menu_url: 'http://www.handsomepizza.com',
    address: '1603 NE Killingsworth St, Portland, OR 97211',
    phone: '+1 (503) 247-7499',
    hours: '8am-9pm Wednesday-Monday',
    primary_category: Category.find_by(name: 'Pizza'),
    secondary_category: Category.find_by(name: 'Salad'),
    tertiary_category: Category.find_by(name: 'Beer Bars')
  })

  handsome_pizza.create_restaurant_info({
    reservations: false,
    delivery: false,
    takeout: true,
    credit_cards: true,
    good_for: ['Lunch', 'Dinner'],
    parking: ['Street'],
    bike_parking: true,
    good_for_kids: true,
    good_for_groups: true,
    attire: 'Casual',
    ambience: ['Casual'],
    noise_level: 'Average',
    alcohol: 'Beer & Wine Only',
    happy_hour: true,
    outdoor_seating: true,
    wifi: 'Free',
    television: false
  })
end

unless Restaurant.where(name: 'Breakside Brewery').exists?
  breakside = Restaurant.create({
    name: 'Breakside Brewery',
    price: 2,
    url: 'http://www.breakside.com',
    menu_url: 'http://www.breakside.com/dekum-pub/',
    address: '820 NE Dekum St, Portland, OR 97211',
    phone: '+1 (503) 719-6475',
    hours: '11:30am-10pm Sunday-Thursday, 11:30am-11pm Friday-Saturday',
    primary_category: Category.find_by(name: 'Gastropubs'),
    secondary_category: Category.find_by(name: 'Breweries'),
    tertiary_category: Category.find_by(name: 'Beer Bars')
  })

  breakside.create_restaurant_info({
    reservations: false,
    delivery: false,
    takeout: true,
    credit_cards: true,
    good_for: ['Dinner'],
    parking: ['Street'],
    bike_parking: true,
    good_for_kids: false,
    good_for_groups: true,
    attire: 'Casual',
    ambience: ['Casual'],
    noise_level: 'Average',
    alcohol: 'Beer & Wine Only',
    outdoor_seating: true,
    wifi: 'Free',
    television: true,
    dog_friendly: true,
    caters: false,
    gender_neutral_restrooms: true
  })
end

unless Restaurant.where(name: 'Coava Coffee Roasters').exists?
  coava = Restaurant.create({
    name: 'Coava Coffee Roasters',
    price: 1,
    url: 'http://coavacoffee.com',
    address: '1300 SE Grand Ave, Portland, OR 97214',
    phone: '+1 (503) 894-8134',
    hours: '6am-6pm Monday-Friday, 7am-6pm Saturday-Sunday',
    primary_category: Category.find_by(name: 'Coffee & Tea')
  })

  coava.create_restaurant_info({
    takeout: true,
    credit_cards: true,
    parking: ['Street'],
    bike_parking: true,
    wheelchair_accessible: true,
    outdoor_seating: true,
    wifi: 'Free',
    caters: false,
    gender_neutral_restrooms: true
  })
end
