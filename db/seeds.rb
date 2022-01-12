# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


users = User.create([
    {name:"Eleanor", email:"Eleanor@eleanor.com", password_digest: 'pw'},
    {name:"Dan", email:"Dan@dan.com", password_digest:'pw'}
])

outfits = Outfit.create([
    {
    image: "image placeholder",
    description: 'regular outfit, nothing special, wear it out',
    rating_agg: 9,
    shopping_links: 'nike.com',
    user_id: users.first.id
},
{
    image: 'placeholder 2',
    description: 'this outfit is a little crazier, wow',
    rating_agg: 10,
    shopping_links: 'aimeleondore.com',
    user_id: users.last.id
}


])

comments = Comment.create([
    {
    text: 'Looks great!',
    outfit_id: outfits.first.id
},
{
    text: 'Wow, fancy!',
    outfit_id: outfits.last.id
}
])

likes = Like.create([
    {
    count: 1,
    outfit_id: outfits.first.id
},
{
    count: 1,
    outfit_id: outfits.last.id
}
])

links = Link.create([
    {
    links: 'nike.com',
    outfit_id: outfits.first.id
},
{
    links: 'aimeleondore.com',
    outfit_id: outfits[1].id
}
])

ratings = Rating.create([
    {
    rating: 9,
    outfit_id: outfits.first.id
}, 
{
    rating: 10,
    outfit_id: outfits[1].id
}
])