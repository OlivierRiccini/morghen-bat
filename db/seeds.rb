# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projects = [ {
              name: "super mega maison",
              category: "maison",
              location: "monaco",
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            },
            {
              name: "super mega maison",
              category: "maison",
              location: "dubai",
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            },
            {
              name: "super mega maison",
              category: "maison",
              location: "poitier",
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            },
            {
              name: "super mega maison",
              category: "maison",
              location: "bali",
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            }
          ]


offers = [ {
              name: "super appartement",
              category: "appartement",
              time_frame: 12,
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            },
            {
              name: "super maison",
              category: "maison",
              time_frame: 12,
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            },
            {
              name: "super chateau",
              category: "chateau",
              time_frame: 12,
              picture: ['http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg', 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg']
            }
          ]

User.create(email: 'test@test.com', password: '123456', admin: true)

new_company_history = CompanyHistory.new(content: "Depuis maintenant 20 ans, nous rénovons vos
appartements et maisons avec passion. Votre confort est notre priorité.
En effet, on sait que votre logement c’est plus qu’un simple investissement,
c’est souvent un projet de vie ou du moins le point de départ d’une belle histoire.
Nous vous accompagnons avec le souci du détails pour vos projets afin de donner vie à vos envies.
De la conception à la réalisation de vos projets et même après la livraison nous
nous engageons à maintenir une communication optimale pour donner vie à vos rêves.")
new_picture_company = Picture.new(pic_duty: new_company_history)
new_picture_company.remote_url_url = "http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg"
new_picture_company.save

CompanyKnowHow.create(content: "Lorem Ipsum is simply dummy text of the printing
and typesetting industry. Lorem Ipsum has been the industry's standard dummy text
ever since the 1500s, when an unknown printer took a galley of type and scrambled
it to make a type specimen book. It has survived not only five centuries, but also
the leap into electronic typesetting, remaining essentially unchanged. It was
popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
passages, and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum.")

3.times do 
  new_value = CompanyValue.new(content: "Lorem Ipsum is simply dummy text of the printing
  and typesetting industry. An unknown printer took a galley of type and scrambled
  it to make a type specimen book.")
  new_value.remote_icon_url = 'http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg'
  new_value.save
end

projects.each do |project|
  new_project = Project.create(name: project[:name], location: project[:location], category: project[:category])
  project[:picture].each do |pic|
    new_picture = Picture.new(pic_duty: new_project)
    new_picture.remote_url_url = pic
    new_picture.save
  end
end

offers.each do |offer|
  new_offer = Offer.create(name: offer[:name], category: offer[:category], time_frame: offer[:time_frame])
  offer[:picture].each do |pic|
    new_picture = Picture.new(pic_duty: new_offer)
    new_picture.remote_url_url = pic
    new_picture.save
  end
end

puts "Finito!!!!"
