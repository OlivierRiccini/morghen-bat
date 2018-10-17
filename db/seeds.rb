# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# projects = [ {
#               name: "super mega maison",
#               category: "house",
#               location: "monaco",
#               budget: 60000,
#               area: 100,
#               time_frame: "3 semaines",
#               content: "Le Lorem Ipsum est simplement du faux texte employé dans
#                         la composition et la mise en page avant impression. Le Lorem
#                         Ipsum est le faux texte standard de l'imprimerie depuis les
#                         années 1500, quand un peintre anonyme assembla ensemble des
#                         morceaux de texte pour réaliser un livre spécimen de polices
#                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
#                         aussi adapté à la bureautique informatique, sans que son
#                         contenu n'en soit modifié. Il a été popularisé dans les années
#                         1960 grâce à la vente de feuilles Letraset contenant des
#                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
#                         dans des applications de mise en page de texte, comme Aldus PageMaker."
#               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530866335/brian-babb-256298-unsplash.jpg']
#             },
#             {
#               name: "super mega maison",
#               category: "house",
#               location: "monaco",
#               budget: 60000,
#               area: 100,
#               time_frame: "3 semaines",
#               content: "Le Lorem Ipsum est simplement du faux texte employé dans
#                         la composition et la mise en page avant impression. Le Lorem
#                         Ipsum est le faux texte standard de l'imprimerie depuis les
#                         années 1500, quand un peintre anonyme assembla ensemble des
#                         morceaux de texte pour réaliser un livre spécimen de polices
#                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
#                         aussi adapté à la bureautique informatique, sans que son
#                         contenu n'en soit modifié. Il a été popularisé dans les années
#                         1960 grâce à la vente de feuilles Letraset contenant des
#                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
#                         dans des applications de mise en page de texte, comme Aldus PageMaker."
#               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530866335/brian-babb-256298-unsplash.jpg']
#             },
#             {
#               name: "super mega maison",
#               category: "house",
#               location: "apartment",
#               budget: 60000,
#               area: 100,
#               time_frame: "3 semaines",
#               content: "Le Lorem Ipsum est simplement du faux texte employé dans
#                         la composition et la mise en page avant impression. Le Lorem
#                         Ipsum est le faux texte standard de l'imprimerie depuis les
#                         années 1500, quand un peintre anonyme assembla ensemble des
#                         morceaux de texte pour réaliser un livre spécimen de polices
#                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
#                         aussi adapté à la bureautique informatique, sans que son
#                         contenu n'en soit modifié. Il a été popularisé dans les années
#                         1960 grâce à la vente de feuilles Letraset contenant des
#                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
#                         dans des applications de mise en page de texte, comme Aldus PageMaker."
#               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530866335/brian-babb-256298-unsplash.jpg']
#             },
#             {
#               name: "super mega maison",
#               category: "apartment",
#               location: "monaco",
#               budget: 60000,
#               area: 100,
#               time_frame: "3 semaines",
#               content: "Le Lorem Ipsum est simplement du faux texte employé dans
#                         la composition et la mise en page avant impression. Le Lorem
#                         Ipsum est le faux texte standard de l'imprimerie depuis les
#                         années 1500, quand un peintre anonyme assembla ensemble des
#                         morceaux de texte pour réaliser un livre spécimen de polices
#                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
#                         aussi adapté à la bureautique informatique, sans que son
#                         contenu n'en soit modifié. Il a été popularisé dans les années
#                         1960 grâce à la vente de feuilles Letraset contenant des
#                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
#                         dans des applications de mise en page de texte, comme Aldus PageMaker."
#               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg',
#               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530866335/brian-babb-256298-unsplash.jpg']
#             }
#           ]


# # offers = [ {
# #               name: "super appartement",
# #               category: "apartment",
# #               time_frame: "3 semaines",
# #               content: "Le Lorem Ipsum est simplement du faux texte employé dans
# #                         la composition et la mise en page avant impression. Le Lorem
# #                         Ipsum est le faux texte standard de l'imprimerie depuis les
# #                         années 1500, quand un peintre anonyme assembla ensemble des
# #                         morceaux de texte pour réaliser un livre spécimen de polices
# #                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
# #                         aussi adapté à la bureautique informatique, sans que son
# #                         contenu n'en soit modifié. Il a été popularisé dans les années
# #                         1960 grâce à la vente de feuilles Letraset contenant des
# #                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
# #                         dans des applications de mise en page de texte, comme Aldus PageMaker."
# #               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg',
# #               #           'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg']
# #             },
# #             {
# #               name: "super maison",
# #               category: "house",
# #               time_frame: "3 semaines",
# #               content: "Le Lorem Ipsum est simplement du faux texte employé dans
# #                         la composition et la mise en page avant impression. Le Lorem
# #                         Ipsum est le faux texte standard de l'imprimerie depuis les
# #                         années 1500, quand un peintre anonyme assembla ensemble des
# #                         morceaux de texte pour réaliser un livre spécimen de polices
# #                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
# #                         aussi adapté à la bureautique informatique, sans que son
# #                         contenu n'en soit modifié. Il a été popularisé dans les années
# #                         1960 grâce à la vente de feuilles Letraset contenant des
# #                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
# #                         dans des applications de mise en page de texte, comme Aldus PageMaker."
# #               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg', 'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg']
# #             },
# #             {
# #               name: "super chateau",
# #               category: "house",
# #               time_frame: "3 semaines",
# #               content: "Le Lorem Ipsum est simplement du faux texte employé dans
# #                         la composition et la mise en page avant impression. Le Lorem
# #                         Ipsum est le faux texte standard de l'imprimerie depuis les
# #                         années 1500, quand un peintre anonyme assembla ensemble des
# #                         morceaux de texte pour réaliser un livre spécimen de polices
# #                         de texte. Il n'a pas fait que survivre cinq siècles, mais s'est
# #                         aussi adapté à la bureautique informatique, sans que son
# #                         contenu n'en soit modifié. Il a été popularisé dans les années
# #                         1960 grâce à la vente de feuilles Letraset contenant des
# #                         passages du Lorem Ipsum, et, plus récemment, par son inclusion
# #                         dans des applications de mise en page de texte, comme Aldus PageMaker."
# #               # picture: ['https://res.cloudinary.com/dqgpcthzg/image/upload/v1530614498/mmr76jralggm2bowz2gh.jpg', 'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530522219/gdoiv5uzqngqcdc7d0a8.jpg']
# #             }
# #           ]

# User.create(email: 'test@test.com', password: '123456', admin: true)

# # new_company_history = CompanyHistory.new(title: "NOTRE HISTOIRE",
# #   content: "Depuis maintenant 20 ans, nous rénovons vos
# # appartements et maisons avec passion. Votre confort est notre priorité.
# # En effet, on sait que votre logement c’est plus qu’un simple investissement,
# # c’est souvent un projet de vie ou du moins le point de départ d’une belle histoire.
# # Nous vous accompagnons avec le souci du détails pour vos projets afin de donner vie à vos envies.
# # De la conception à la réalisation de vos projets et même après la livraison nous
# # nous engageons à maintenir une communication optimale pour donner vie à vos rêves.")
# # new_picture_company = Picture.new(pic_duty: new_company_history)
# # new_picture_company.url = 'https://res.cloudinary.com/morghenbat/image/upload/v1537973922/images_1.jpg'
# # new_company_history.save

# 1.times do
#   new_company_know_how = CompanyKnowHow.new(content: "Lorem Ipsum is simply dummy text of the printing
#   and typesetting industry. Lorem Ipsum has been the industry's standard dummy text
#   ever since the 1500s.")
#   # new_company_know_how.remote_icon_url = "../app/assets/images/insurance.svg"
#   new_company_know_how.save
# end
# puts "Company Know-Hows created!"

# 3.times do
#   new_value = CompanyValue.new(content: "Lorem Ipsum is simply dummy text of the printing
#   and typesetting industry.")
#   # new_value.remote_icon_url = "https://res.cloudinary.com/dqgpcthzg/image/upload/v1530698299/lokxawlnsubve7gocdfj.svg"
#   new_value.save
# end

# 2.times do
#   projects.each do |project|
#     new_project = Project.create(name: project[:name], location: project[:location],
#                                  category: project[:category], budget: project[:budget],
#                                  area: project[:area], time_frame: project[:time_frame],
#                                  content: project[:content])
#     # project[:picture].each do |pic|
#     #   new_picture = Picture.new(pic_duty: new_project)
#     #   new_picture.remote_url_url = pic
#     #   new_picture.save
#     # end
#   end
# end
# puts "Porjects created!"

# # offers.each do |offer|
# #   new_offer = Offer.create(name: offer[:name], category: offer[:category],
# #                            time_frame: offer[:time_frame], content: offer[:content])
# #   offer[:picture].each do |pic|
# #     new_picture = Picture.new(pic_duty: new_offer)
# #     new_picture.remote_url_url = pic
# #     new_picture.save
# #   end
# # end
# # puts "Offers created!"

# service_1 = Service.new(title: 'garantie 10 ans', content: 'Lorem Ipsum is simply dummy text of the printing
#   and typesetting industry. An unknown printer took a galley of type and scrambled
#   it to make a type specimen book.')
# # service_1.remote_icon_url = "https://res.cloudinary.com/dqgpcthzg/image/upload/v1530698299/lokxawlnsubve7gocdfj.svg"
# service_1.save

# service_2 = Service.new(title: 'qualité 100% professionnelle', content: 'Lorem Ipsum is simply dummy text of the printing
#   and typesetting industry. An unknown printer took a galley of type and scrambled
#   it to make a type specimen book.')
# # service_2.remote_icon_url = "https://res.cloudinary.com/dqgpcthzg/image/upload/v1530698299/lokxawlnsubve7gocdfj.svg"
# service_2.save

# service_3 = Service.new(title: 'financement fléxible', content: 'Lorem Ipsum is simply dummy text of the printing
#   and typesetting industry. An unknown printer took a galley of type and scrambled
#   it to make a type specimen book.')
# # service_3.remote_icon_url = "https://res.cloudinary.com/dqgpcthzg/image/upload/v1530698299/lokxawlnsubve7gocdfj.svg"
# service_3.save

# puts "Services created!"

# new_mission = Mission.create(content: "Depuis maintenant 20 ans, nous rénovons vos
# appartements et maisons avec passion. Votre confort est notre priorité.
# En effet, on sait que votre logement c’est plus qu’un simple investissement,
# c’est souvent un projet de vie ou du moins le point de départ d’une belle histoire.")
# puts "Mission created!"

# new_banner = Banner.new(tagline: "donnez vie à vos projets, construisez votre avenir avec nous.")
# # new_banner.remote_image_url = 'https://res.cloudinary.com/dqgpcthzg/image/upload/v1530866335/brian-babb-256298-unsplash.jpg'
# new_banner.save
# puts "Banner created!"

# CompanyDetail.create(address: "1 rue madon", postal_code: "93150", city: "blanc mesnil", country: "fr", phone: "0100010101")
# puts "Company details done!"

# # I18n.locale = :en
# # new_company_history.update(title: "OUR HISTORY",
# #   content: "For 20 years now, we have been renovating your apartments and houses
# #   with passion. Your comfort is our priority. Indeed, we know that your home is
# #   more than just an investment, it is often a project of life or at least the
# #   starting point of a beautiful story. We accompany you with the attention to detail
# #   for your projects to give life to your desires. From the conception to the realization
# #     of your projects and even after the delivery we commit ourselves to maintain
# #     an optimal communication to give life to your dreams.")

# # new_mission.update(content: "For 20 years now, we have been renovating your apartments and houses
# #   with passion. Your comfort is our priority. Indeed, we know that your home is
# #   more than just an investment, it is often a project of life or at least the
# #   starting point of a beautiful story.")

# # new_banner.update(tagline: "give life to your projects, build your future with us.")

# # service_1.update(title: '10 year warranty', content: 'Lorem Ipsum is simply dummy text of the printing
# #   and typesetting industry. An unknown printer took a galley of type and scrambled
# #   it to make a type specimen book.')

# # service_2.update(title: '100% professional quality', content: 'Lorem Ipsum is simply dummy text of the printing
# #   and typesetting industry. An unknown printer took a galley of type and scrambled
# #   it to make a type specimen book.')

# # service_3.update(title: 'flexible financing', content: 'Lorem Ipsum is simply dummy text of the printing
# #   and typesetting industry. An unknown printer took a galley of type and scrambled
# #   it to make a type specimen book.')

# # I18n.locale = :es
# # new_company_history.update(title: "NUESTRA HISTORIA",
# #   content: "Durante 20 años, hemos estado renovando sus apartamentos y casas con
# #   pasión. Tu comodidad es nuestra prioridad De hecho, sabemos que su hogar es más
# #   que una inversión, a menudo es un proyecto de vida o al menos el punto de partida
# #   de una bella historia. Te acompañamos con la atención al detalle de tus proyectos
# #   para dar vida a tus deseos. Desde la concepción hasta la realización de sus proyectos
# #   e incluso después de la entrega, nos comprometemos a mantener una comunicación
# #   óptima para dar vida a sus sueños.")

# # new_mission.update(content: "En espanol, For 20 years now, we have been renovating your apartments and houses
# #   with passion. Your comfort is our priority. Indeed, we know that your home is
# #   more than just an investment, it is often a project of life or at least the
# #   starting point of a beautiful story.")

# # new_banner.update(tagline: "dale vida a tus proyectos, construye tu futuro con nosotros.")

# # service_1.update(title: 'garantía de 10 años', content: 'Lorem Ipsum is simply dummy text of the printing
# #   and typesetting industry. An unknown printer took a galley of type and scrambled
# #   it to make a type specimen book.')

# # service_2.update(title: 'Calidad 100% profesional', content: 'Lorem Ipsum is simply dummy text of the printing
# #   and typesetting industry. An unknown printer took a galley of type and scrambled
# #   it to make a type specimen book.')

# # service_3.update(title: 'financiamiento flexible', content: 'Lorem Ipsum is simply dummy text of the printing
# #   and typesetting industry. An unknown printer took a galley of type and scrambled
# #   it to make a type specimen book.')

# # puts "Finito!!!!"

3.times do
  Pack.create(title: "Premium Pack", description: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
end









