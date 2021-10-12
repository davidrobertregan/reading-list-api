user_1 = User.create(
  username: 'tester1',
  email: 'test@test.com',
  bio: 'testing is my life!'
)
user_2 = User.create(
  username: 'tester2',
  email: 'testing@test.com',
  bio: 'to test or not to test, that is the question'
)

blink = user_1.books.create(
  title: 'Blink',
  author: 'Malcolmn Gladwell',
  description: "Blink is a book about how we think without thinking, about choices that seem to be made in an instant-in the blink of an eye-that actually aren't as simple as they seem. ... Now, in Blink, he revolutionizes the way we understand the world within.",
  cover_image_url: "https://res.cloudinary.com/dnocv6uwb/image/upload/v1631945315/ulnbyvuxti0mklh4ya46.jpg"
)

the_way_of_kings = user_1.books.create(
  title: 'The Way of Kings', 
  author: 'Brandon Sanderson',
  description: "The Way of Kings is an epic fantasy novel written by American author Brandon Sanderson and the first book in The Stormlight Archive series. The novel was published on August 31, 2010, by Tor Books. The Way of Kings consists of one prelude, one prologue, 75 chapters, an epilogue and 9 interludes. It was followed by Words of Radiance in 2014, Oathbringer in 2017 and Rhythm of War in 2020. A leatherbound edition is scheduled to be released in 2021.",
  cover_image_url: "https://res.cloudinary.com/dnocv6uwb/image/upload/v1631946131/menvv6ioanlrbh0qi35d.jpg"
)

name_of_the_wind = user_1.books.create(
  title: 'The Name of the Wind', 
  author: 'Patrick Rothfuss',
  description: "The Kingkiller Chronicle tells the life story of a man named Kvothe. In the present day, Kvothe is a rural innkeeper, living under a pseudonym. In the past, he was a wandering trouper and musician who grew to be a notorious arcanist (or wizard), known as the infamous \"Kingkiller\"."
)