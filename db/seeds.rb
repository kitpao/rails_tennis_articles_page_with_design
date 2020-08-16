# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tour = Category.create(name: "Tournaments", priority: 1)
play = Category.create(name: "Players", priority: 2)
tech = Category.create(name: "Training Techniques", priority: 3)
other = Category.create(name: "More...", priority: 4)
admin = User.create(name: "admin")
user = User.create(name: "user")
tour.articles.create(author: admin, title: "Rogers Cup 2020 Suspended", text: "Due to pandemic, this tournament won't be held. This tournament was originally planned to take place in Toronto, Canada in the second week of August. And the prize money was of $5,951,605 in hard-surface courts")
tour.articles.create(author: admin, title: "US Open 2020 without presence of fans", text: "For the first time in its history, this year's US Open will be played without the presence of fans. This tournament will take place in Ney York, U.S.A at the end of August in hard-surface courts")
tour.articles.create(author: admin, title: "Generali Open 2020 shifted dates", text: "The new dates for this tournament have shifted to 8-13 September due to COVID-19 pandemic. This tournament will take place in Kitzbuhel, Australia on clay-surface courts with a prize money of €542,695")
tour.articles.create(author: admin, title: "Roland Garros 2020 shifted dates", text: "The new dates for this tournament have shifted to 27 September - 11 October due to COVID-19 pandemic. This tournament has always been help in Paris, France on clay courts and this year it will not be an exception")
play.articles.create(author: admin, title: "Roger Federer facts", text: "For his 39th birthday ATP Tour shared these facts about the 4rth Ranked Tennis player: Federer has spent a record 310 weeks atop the FedEx ATP Rankings, finishing atop the year-end standings five times. Tournaments at which Federer has won 10 titles. He has done so at the Swiss Indoors Basel and the NOVENTI OPEN in Halle. Won three Grand Slams in a calendar year on three occasions, in 2004 and 2006-07. Federer is the only player to accomplish that feat. Number of children Federer has with his wife, Mirka Federer. They have two sets of twins: Myla & Charlene (born 23 July 2009) and Leo & Lenny (born 6 May 2014)")
play.articles.create(author: admin, title: "Novak Djokovic is number 1", text: "If you want to know what it takes to beat the number 1 player in the world, you have to check out Craig O'Shannessy article titled Think you can beat Djokovic? Here's What it will take")
play.articles.create(author: admin, title: "Jannik Sinner's Background", text: "Learn about the youngest player ranked in the Top 100 players of the world. This 18 year old italian stunned the field at the 2019 next gen ATP finals. He is a former Junior Skiing Champion. He owns the heaviest backhand on the ATP tour. And he's raising funds for COVID-19 relief. Isn't he inspiring?")
play.articles.create(author: admin, title: "Rafael Nadal still on the top", text: "Number 2 ranked Player Rafael Nadal and number 1 ranked player Novak Djokovic rivalry has developed into one of the classic rivalries in tennis history. Still, in their most even match in 2008 Hamburg semi-finals Nadal ultimately triumph 7-5, 2-6, 6-2 in a three-hour, three-minute marathon. And then Nadal went on to beat Roger Federer in the championship match, avenging a loss against the Swiss in the 2007 Hamburg final.")
tech.articles.create(author: admin, title: "Begginers: How to serve", text: "The movements you need to know are: the serve, forehand groundstroke, backhand groundstroke, forehand volley, backhand volley, and the overhead smash. Lets start with the serve: Before starting, make sure you’re standing behind the baseline. Next place your feet in a side on stance where if you drew an arrow between the tips of your feet it’d point towards your opponent (this may feel a little strange at first but will help with power). Finally, grip the racket in your dominant hand using a continental grip (like you’d hold a hammer) and hold the tennis ball in your non-dominant hand. Now you’re ready to start serving.")
tech.articles.create(author: admin, title: "Begginers: What is a forehand groundstroke", text: "A tennis forehand is one of the two types of groundstrokes. It refers to a shot performed from the baseline with the racket held in your dominant hand. For a right-handed player the forehand swing starts on the right side of your body, continues forward and across your body as you contact the ball (at this point the palm of your hand is turned away from your body), and finishes on the left side of your body.")
tech.articles.create(author: admin, title: "Begginers: What is a backhand groundstroke", text: "A backhand in tennis is the other of the two types of groundstroke. It can be a one-handed and/or two-handed stroke. Like the forehand, the basic swing pattern starts on one side of your body, moves forward and across, and ends on the other side of your body. But unlike the forehand, the backhand is hit with the back of your dominant hand facing the direction of the stroke")
tech.articles.create(author: admin, title: "Begginers: How to hit a two-handed backhand", text: "A two-handed backhand is performed with your dominant hand holding the bottom of the racquet grip and your non-dominant hand placed above as you make contact with the ball. The addition of the second arm and hand gives the two-handed backhand greater control and power at the cost of reach. Study the image sequence of Andre Agassi and follow along step-by step below.")
other.articles.create(author: admin, title: "Another article", text: "This is a fill in article created to have a complete")
other.articles.create(author: admin, title: "Win A Signed 'Big Four' Racquet Collection!", text: "Funds raised will support members of the ATP Coach Programme in most need due to the COVID-19 pandemic. For more than a decade, the ‘Big Four’ of Roger Federer, Rafael Nadal, Novak Djokovic and Andy Murray have used their skill, fitness and determination to create ATP Tour history.

In the latest prize draw in support of the ATP Coach Programme, all you will need is a slice of luck to take home a dream prize. The historic group, which owns a combined 313 tour-level singles trophies, each donated a signed racquet to create a framed collection of four racquets for one lucky entrant to win. ")
other.articles.create(author: admin, title: "Free Live Streams and Replays: The New 'Challenger TV'", text: "Fans of the ATP Challenger Tour have never had it so good. Free live streams of every match from every tournament have brought you closer to the action from around the world.

Now, it gets even better.

Fire up a stream whenever you want with the new 'Challenger TV'. Want to follow the path of one of the ATP's future stars, but unable to watch the action live? Not to worry. Catch up on every encounter with thousands of matches available for free and on demand.")
other.articles.create(author: admin, title: "Truist Atlanta Open Feeding Frontline Healthcare Workers", text: "ATP 250 is partnering to provide a food truck for hospital workers on Tuesday and Wednesday.

The Truist Atlanta Open announced that it is joining with partner, CIGNA, to feed some of Metro Atlanta’s frontline healthcare workers at Northside Hospital Cherokee on behalf of GF Sports, the Truist Atlanta Open, CIGNA and Waffle House.

The Waffle House Food Truck will visit Northside Hospital Cherokee on Tuesday, 14 April from 10am-2pm to feed the daytime shift and on Wednesday, 15 April, from 8pm-12am for the night shift.")
Vote.create(user: user, article: Article.first)
