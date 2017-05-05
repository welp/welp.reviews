unless Restaurant.where(name: 'Expatriate').exists?
  expatriate = Restaurant.create({
    name: 'Expatriate',
    price: 2,
    url: 'http://expatriatepdx.com/info/',
    menu_url: 'http://expatriatepdx.com/cocktails/',
    photo_url: 'https://cdn0.vox-cdn.com/uploads/chorus_image/image/51439385/DSC_7081.0.0.0.jpg',
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
    photo_url: 'http://pdxfoodpress.com/wp-content/uploads/2015/06/la-Taq-tacosw.jpg',
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
    photo_url: 'http://image.oregonlive.com/home/olive-media/width960/img/oregonian/photo/2013/08/-5945381f5b606587.JPG',
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
    photo_url: 'https://res.cloudinary.com/sagacity/image/upload/c_crop/c_fit,h_640,w_960/7-13-breakside-brewery-dekum_wtn4p7',
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
    photo_url: 'http://dailycoffeenews.com/wp-content/uploads/2015/11/coavaphoto31-620x414.jpg',
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
    alcohol: 'None',
    outdoor_seating: true,
    wifi: 'Free',
    caters: false,
    gender_neutral_restrooms: true
  })
end

unless Restaurant.where(name: "Charlie’s Deli").exists?
  charlies = Restaurant.create({
    name: "Charlie's Deli",
    price: 1,
    url: 'http://charliesdeli.com',
    menu_url: 'http://charliesdeli.com/menu',
    photo_url: 'https://media.fivestars.com/biz_pictures/9e85cb37056e4bc4895b31e9d1c55bd6.jpg',
    address: '22 NW 4th Ave, Portland, OR 97209',
    phone: '+1 (503) 902-9428',
    hours: '11am-10pm Monday-Saturday',
    primary_category: Category.find_by(name: 'Delis'),
    secondary_category: Category.find_by(name: 'Sandwiches')
  })

  charlies.create_restaurant_info({
    reservations: false,
    takeout: true,
    delivery: true,
    credit_cards: true,
    good_for: ['Lunch'],
    parking: ['Street'],
    bike_parking: true,
    wheelchair_accessible: true,
    good_for_kids: true,
    good_for_groups: true,
    attire: 'Casual',
    ambience: ['Casual'],
    noise_level: 'Average',
    alcohol: 'None',
    outdoor_seating: false,
    wifi: 'Free',
    television: true,
    caters: true,
    gender_neutral_restrooms: true
  })
end
