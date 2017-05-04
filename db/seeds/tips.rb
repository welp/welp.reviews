expatriate = Restaurant.find_by(name: 'Expatriate')

expatriate.tips.create([
  {
    body: "Be sure to order the shrimp toast!!",
    user: User.create(username: 'marybethm', email: 'mary.beth@gmail.com', city: 'Portland, OR')
  },
  {
    body: "One of the best no-frills burgers on the menu.",
    user: User.create(username: 'rudrajit', email: 'rudrajitd@gmail.com', city: 'Portland, OR')
  },
  {
    body: "Drinks inspired by the Caribbean and Myanmar matched with Asian flavored/American classic food. Try the expat nachos!",
    user: User.create(username: 'besto', email: 'besto@gmail.com', city: 'Oakland, CA')
  }
])

la_taq = Restaurant.find_by(name: 'La Taq')

la_taq.tips.create([
  {
    body: "The queso w/ guacamole and the puffy beef taco might be my favorite food in PDX!",
    user: User.create(username: 'adamr', email: 'adam.rejick@gmail.com', city: 'Vancouver, WA')
  },
  {
    body: "Fundido, salsa, and fumble-free guacamole, Tex-Mex style!",
    user: User.create(username: 'deborahhh', email: 'deborah.g@gmail.com', city: 'Portland, OR')
  },
  {
    body: "Get the vaso loco. Not many bars know what a michelada is so its nice to find a place with one on the menu, and its done well.",
    user: User.create(username: 'valeriensteel', email: 'valerie.w@gmail.com', city: 'Portland, OR')
  }
])

handsome_pizza = Restaurant.find_by(name: 'Handsome Pizza')

handsome_pizza.tips.create([
  {
    body: "Best wood fired pizza in Portland, Oregon. #keepportlandweird",
    user: User.create(username: 'weirdmike', email: 'mike.newburg@gmail.com', city: 'Portland, OR')
  },
  {
    body: "Hands down, best pizza in town! :)",
    user: User.create(username: 'stephanieoh', email: 'stephanie.obern@gmail.com', city: 'Salem, OR')
  },
  {
    body: "Nope.",
    user: User.create(username: 'bessta', email: 'tessa@gmail.com', city: 'Vancouver, WA')
  }
])

breakside = Restaurant.find_by(name: 'Breakside Brewery')

breakside.tips.create([
  {
    body: "Argh! Fruit flies!!!",
    user: User.create(username: 'beerboy', email: 'beer.boy@gmail.com', city: 'Portland, OR')
  },
  {
    body: "Great beer and good food. Surprisingly cozy for how much beer they distribute!",
    user: User.create(username: 'holywayne', email: 'wayne@miracle.tx', city: 'Jardin, TX')
  },
  {
    body: "Good beer. But don't order dinner. Ours took over an hour to prep.",
    user: User.create(username: 'gerrymanderer', email: 'gerry.olaf@gmail.com', city: 'Portland, OR')
  }
])

coava = Restaurant.find_by(name: 'Coava Coffee Roasters')

coava.tips.create([
  {
    body: "Great coffee, tasty pastries, nice people, beautiful space. What more do you",
    user: User.create(username: 'saraplease', email: 'sara.p@gmail.com', city: 'Roseville, CA')
  },
  {
    body: "No tea for your non-coffee drinking companion",
    user: User.create(username: 'megamegan', email: 'megan.k@gmail.com', city: 'Oakland, CA')
  },
  {
    body: "Free refills on iced coffee!",
    user: User.create(username: 'illjoeyou', email: 'joe.u@gmail.com', city: 'Colton, CA')
  }
])
