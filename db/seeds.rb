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
    rating_agg: avg_review,
    links: 'nike.com',
    user: users.first.id
},
{
    image: 'placeholder 2',
    description: 'this outfit is a little crazier, wow',
    rating_agg: avg_review,
    links: 'aimeleondore.com',
    user: users.last.id
}


])

comments = Comment.create([
    {
    text: 'Looks great!',
    outfit: outfits.first.id
},
{
    text: 'Wow, fancy!',
    outfit: outfits.last.id
}
])

likes = Like.create([
    {
    count: 1,
    outfit: outfits.first.id
},
{
    count: 1,
    outfit: outfits.last.id
}
])

links = Links.create([
    {
    links: 'nike.com',
    outfit: outfits.first.id
},
{
    links: 'aimeleondore.com',
    outfit: outfits[2].id
}
])

ratings = Rating.create([
    {
    rating: 9,
    outfit: outfits.first.id
}, 
{
    rating: 10,
    outfit: outfits[2].id
}
])