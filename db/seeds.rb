# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


users = Users.create([
    {
    name: "Dan"
}
])

outfits = Outfit.create([
    {
    image: "image placeholder",
    description: 'regular outfit, nothing special, wear it out',
    rating_agg: avg_review,
    links: 'nike.com'
    user: users.first
},
{
    image: 'placeholder 2',
    description: 'this outfit is a little crazier, wow',
    rating_agg: avg_review,
    links: 'aimeleondore.com',
    user: users.first
}


])

comments = Comment.create([
    {
    text: 'Looks great!',
    outfit: outfits.first
},
{
    text: 'Wow, fancy!',
    outfit: outfits.second
}
])

likes = Like.create([
    {
    count: 1,
    outfit: outfits.first
},
{
    count: 1,
    outfit: outfits.second
}
])

links = Links.create([
    {
    links: 'nike.com',
    outfit: outfits.first
},
{
    links: 'aimeleondore.com',
    outfit: outfits.second
}
])

ratings = Rating.create([
    {
    rating: 9,
    outfit: outfits.first
}, 
{
    rating: 10,
    outfit: outfit.second
}
])