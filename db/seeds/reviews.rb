davidcelis = User.find_by(username: 'davidcelis')
gjtorikian = User.find_by(username: 'gjtorikian')

expatriate = Restaurant.find_by(name: 'Expatriate')

expatriate.reviews.create({
  user: davidcelis,
  rating: 5,
  body: <<-BODY
Man can this place make a drink! I highly recommend letting the bartenders do a custom cocktail for you (they call it the Diplomatic Pouch). The bartender asked us what spirits we liked, flavor profiles, etc, and made 100% off menu unique drinks for us. They were outstanding.

Also, weirdly enough, they have one of the best burgers in town. Still trying to wrap my head around that, because it's basically a back-yard cookout burger but... elevated. Get the burger.
BODY
})

expatriate.reviews.create({
  user: gjtorikian,
  rating: 1,
  body: <<-BODY
Call me an old fogey, but I think this place is BS. Starting with the boom-de-boom "music", which makes it nearly impossible to hear the person sitting next to you, and moving on to the fact that the server did not acknowledge our presence for at least 10 minutes, followed by the fact that it took another 10 minutes to get our drinks.

The food was uneven; far from the best fries that I've had in this town, and the famed corn dog is just that; a corn dog. The fried chicken however was outstanding, and we loved the tea leaf salad. The problem was that we waited quite a while for the food to arrive, and then the plates all arrived in quick succession.

I guess if you want to be "cool" this is a place to be, but I'd rather be able to converse with my friends, experience good service, and consistently good food.
BODY
})

la_taq = Restaurant.find_by(name: 'La Taq')

la_taq.reviews.create({
  user: davidcelis,
  rating: 4,
  body: <<-BODY
This is so Texan y'all. I love it. Let's start:

1. Queso w/ pork: I am queso and queso is me. This is so so so good, and almost identical to queso I've had in Austin.
2. Stacked enchiladas: Never had these before actually. But I liked them!
3. Taquitos de papas: THIS IS EVERYTHING. For my fellow meat eaters--if you think this is bland, think again. Some of the best taquitos de papas I've had.
4. Every taco here is delicious. Every single one of them.
5. Killer margaritas. The Yung Coconut is a little sweet for me, but try their house margarita with mezcal and chile salt.
BODY
})

la_taq.reviews.create({
  user: gjtorikian,
  rating: 2,
  body: <<-BODY
Wanted to like it... didn't. We love Podnah's but this place needs work.

The good points: house made escabeche was wonderful with the surprising potato inclusion the star, very nice snapper ceviche, bright fresh & delicious.

The bad points: service, on all levels, beginning to end, the other 3 dishes, greasy, overly cheesy nachos, all tacos tasted were heavily salted to the point where other flavors were background notes (also stale tortillas), the tamales tasted like cornbread, not properly steamed masa, more like a corn cake stuffed with meat.

Good beer selection, very nice tequila/mescal choices but something actually made on site, their carrot cocktail tasted like orange Faygo with a cumin finish. Interesting maybe but not a cocktail, not enjoyable, & certainly not something I recommend to anyone :(
BODY
})

handsome_pizza = Restaurant.find_by(name: 'Handsome Pizza')

handsome_pizza.reviews.create({
  user: davidcelis,
  rating: 5,
  body: <<-BODY
I'm not a native New Yorker, but I'm tough on West Coast pizza. That being said, I've got to say this place is hands down the BEST pizza in all of Portland. The crust is thin but still has a great chew, the tomato sauce is incredibly fresh, and the toppings are inventive. When I don't opt for one of the special pies of the day, my go-tos are the Di Farra (add anchovies!), the Gillian Richardson and the Mikey Handsome.

I've tried over 20 pizza shops across Portland and Handsome is my #1. It continues to deliver incredible taste in a friendly and laid-back atmosphere time and time again.
BODY
})

handsome_pizza.reviews.create({
  user: gjtorikian,
  rating: 2,
  body: <<-BODY
Sunday dinner. Always a problem. Energy is low from the weekend and will is sapped by the impending return to work. Don't wanna cook, don't wanna go anywhere. It's these times that web-ordered food is worth the fees.

But, I recall, we've been wanting to try Lonesome, no, Handsome Pizza. It's not far away, let's do that. Yeah!

Ehhhhh. It's bland. There's just other way to describe it. The crust is nicely crispy but it doesn't taste like much of anything. There doesn't seem to be any sauce, just tomatoes rubbed across on it. I got a small cheese for $9 and added pepperoni for $2 or $3. Even the pepperoni was underwhelming.

Everybody was nice, the counter guy volunteered they could split pies, which is a nice change from Portland hipster anti-service. I'll probably be back. If they get some salt.
BODY
})

breakside = Restaurant.find_by(name: 'Breakside Brewery')

breakside.reviews.create({
  user: davidcelis,
  rating: 5,
  body: <<-BODY
After only having a rather mediocre Breakside beer in a bottle, I didn't have very high expectations for this place. I was happily proven wrong.

My girlfriend and I came in here on a Sunday evening, and the place was packed. Good sign. After a few minutes, we got a table. Before that, we ordered a couple of beers -- I had the Tall Man IPA -- and both were fresh and delicious. Great sign.

The menu looked great, and we settled on the small portion of nachos, with the thought we might order more. How silly. This was a a gargantuan pile of chips and cheese and pulled pork that was lip-smackingly good. We barely finished it, and I like to think we're nacho pros. How anyone other than a table of 14 can devour the Mount Hood-size large nachos is beyond me.

I only wish we had room in our stomachs to try more food, because it all looked so good. Instead, our dessert was a bourbon barrel-aged salted caramel stout, which was fantastic. We even bought a bomber to take home. Can't wait to come back, with much higher and appropriate expectations.
BODY
})

breakside.reviews.create({
  user: gjtorikian,
  rating: 1,
  body: <<-BODY
1. We waited literally 45 minutes for our food and the place was only 3/4 full.
2. They didn't check in to see if we needed anything, not even water after the first 15 minutes of waiting.
3. We had to ask for silverware.
4. The food was mediocre, and pretty pricey.
5. The one vegetarian person in our party had exactly one option that had any protein.
6. The sweet potato fries seemed to have been cooking the whole time we were waiting.
7. The waitress forget to pick up our cards to finalize our payment and only came back by after I'd gone inside to pay the tab.

The servers were friendly when they did come by.
BODY
})

coava = Restaurant.find_by(name: 'Coava Coffee Roasters')

coava.reviews.create({
  user: davidcelis,
  rating: 5,
  body: <<-BODY
Incredible coffee resides here. So rich, so delicious, and made with a smile. I'm so glad to have found this gem right in town, placed on the corner of SE Main St. and SE Grand Ave. Perfect location with large windows lining the corner walls allowing insane amounts of natural light to make it seem like you're enjoying a warm cup of coffee outdoors. They have 6 items on their menu, though it may not seem like much, they are artists at their craft. I highly recommend this place if you're a local or a passerbyer in search of a choice cup of coffee. Check out Coava, it's probably the best coffee roaster in Portland right now!

Logistics:

Free timed street parking
Free Wi-Fi
Lots of open room, standing bars, and large tables to relax at.
BODY
})

coava.reviews.create({
  user: gjtorikian,
  rating: 1,
  body: <<-BODY
Swear to god, my five minutes in here was like a Portlandia skit.

Either the place is still under construction, or it's taking minimalist industrial to a whole new level. Piles of wood, an ancient table saw - it was such a mixture of beautiful woodwork and... nothing that I had trouble taking it all in.

So we approach the counter, which was staffed by the two most hipsterical hipsters from central casting your brain could imagine: one emaciated, arm-tatooed, tightshirted, bedhead; and a wee ginger with a meticulously manicured 'stache. The only thing that could have enhanced their indie cred is if they had been wheeling their bikes around as they worked. We stood looking at the vast expanse of counter for a moment.

To the right, there was an espresso machine with two boards with what I assume were very special and rare types of caffiene bean types scrawled in hipsterprint. To the left was some sort of cup of coffee making lab. No menu, no indication of procedure normally found in coffee establishments; just silence and tumbleweeds. I was already beginning to laugh a little, so my much more tolerant companion said, "We don't know what to do."

'Stache eagerly chirped up in his tight vintage pearl-buttoned plaid shirt to explain something about each cup being ground and prepared individually and another something about only having two types of bean each day, but they only had one because they were down to one grinder. I guess that means each type of bean has its own grinder or something. He then looked to his left at the espresso machine, and with no little disdain, offered that they also served traditional espresso drinks.

My friend asked if they had decaf, which led us to find out that being down a grinder also means no decaf. Apropos of nothing, he mentions that two of their baristas were off at some fucking coffee making competition. I was at this point trying so hard to hold in my laughter that I had to go outside. My friend cocked her head, said, "Oh", and followed me out. We then went to the Fresh Pot and sat down, where she had a lovely latte and I had a cappuccino and a bagel.
BODY
})
