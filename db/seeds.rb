Heroine.destroy_all
Power.destroy_all

powers = [
  {name:"super strength", description: "gives the wielder super-human strengths", heroine_id: 1 },
  {name:"flight", description: "gives the wielder the ability to fly through the skies at supersonic speed", heroine_id: 3 },
  {name:"super human senses", description: "allows the wielder to user her senses at a super-human level", heroine_id: 2 },
  {name:"elasticity", description: "can stretch the human body to extreme lengths", heroine_id: 1 }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel"},
  {name: "Doreen Green", super_name: "Squirrel Girl" },
  {name:"Gwen Stacy", super_name:"Spider-Gwen" },
  {name:"Janet Van Dyne", super_name:"The Wasp" },
  {name:"Wanda Maximoff", super_name:"Scarlet Witch" },
  {name:"Carol Danvers", super_name:"Captain Marvel" },
  {name:"Jean Grey", super_name:"Dark Phoenix" },
  {name:"Ororo Munroe", super_name:"Storm" },
  {name:"Kitty Pryde", super_name:"Shadowcat" },
  {name:"Elektra Natchios", super_name:"Elektra" }
]

# ---------------
# POWERFUL HEROINES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate heroine with a power!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
# heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# ---------------

heroines.each { |heroine| Heroine.create(heroine) }
