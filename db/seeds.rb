# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

CategoryProduct.destroy_all
CategoryProduct.create(name: "Motores")
CategoryProduct.create(name: "Moda")
CategoryProduct.create(name: "Electrónica")
CategoryProduct.create(name: "Colleccionables y Arte")
CategoryProduct.create(name: "Hogar y Jardín")
CategoryProduct.create(name: "Deporte")
CategoryProduct.create(name: "Juguetes y Pasatiempos")
CategoryProduct.create(name: "Empresarial e Industrial")
CategoryProduct.create(name: "Música")
CategoryProduct.create(name: "Partes y Accesorios", category_product_id: CategoryProduct.find_by(name: "Motores").id)
CategoryProduct.create(name: "Vehículos", category_product_id: CategoryProduct.find_by(name: "Motores").id)
CategoryProduct.create(name: "Belleza", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Carteras y Accesorios", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Salud", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Joyería", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Niños y Bebé", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Ropa para Hombre", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Zapatos", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Relojes", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Ropa para Mujer", category_product_id: CategoryProduct.find_by(name: "Moda").id)
CategoryProduct.create(name: "Cámara y Fotografía", category_product_id: CategoryProduct.find_by(name: "Electrónica").id)
CategoryProduct.create(name: "Electrónica Automotriz", category_product_id: CategoryProduct.find_by(name: "Electrónica").id)
CategoryProduct.create(name: "Celulares y Accesorios", category_product_id: CategoryProduct.find_by(name: "Electrónica").id)
CategoryProduct.create(name: "Computadoras y Tablets", category_product_id: CategoryProduct.find_by(name: "Electrónica").id)
CategoryProduct.create(name: "TV, Video y Audio", category_product_id: CategoryProduct.find_by(name: "Electrónica").id)
CategoryProduct.create(name: "Videojuegos y Consolas", category_product_id: CategoryProduct.find_by(name: "Electrónica").id)
CategoryProduct.create(name: "Antiguedades", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Arte", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Monedas y Papel Moneda", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Coleccionables", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Comics", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Muñecas y Osos", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Coleccionables del Entretenimiento", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Cerámica y Vidrio", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Coleccionables del Deporte", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Estampillas", category_product_id: CategoryProduct.find_by(name: "Colleccionables y Arte").id)
CategoryProduct.create(name: "Bebé", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Baño", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Cama", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Artesanía", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Comida y Bebestibles", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Muebles", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Decoración", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Reforma Hogareña", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Quehaceres y Organización", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Cocina y Comedor", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Electrodomésticos", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Suministros para Mascotas", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Herramientas", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Jardín", category_product_id: CategoryProduct.find_by(name: "Hogar y Jardín").id)
CategoryProduct.create(name: "Boxeo, Artes Marciales y MMA", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Ciclismo", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Pesca", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Entrenamiento y Correr", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Golf", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Caza", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Juegos de Interior", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Deportes al Aire Libre", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Deportes de Equipos", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Deportes Acuáticos", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Deportes de Invierno", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Yoga y Pilates", category_product_id: CategoryProduct.find_by(name: "Deporte").id)
CategoryProduct.create(name: "Figuras de Acción", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Juguetes de Construcción", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Vehículos de Juguete", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Educacional", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Juegos", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Modelos de Trenes", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Kits y Modelos", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Juguetes de Pre-escolar", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Radiocontrol", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Juguetes de TV, Películas y Personajes", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Cartas Intercambiables", category_product_id: CategoryProduct.find_by(name: "Juguetes y Pasatiempos").id)
CategoryProduct.create(name: "Agricultura y Silvicultura", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Construcción", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Equipo ELéctrico y de Testeo", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Gasolina y Energía", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Oficina", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Ciencias de la Salud y Laboratorio", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Maquinaria Pesada", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Automatización Industrial y Control", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Maquinaria Ligera y Herramientas", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Suministros Industriales", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Manofactura y Metalurgia", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Embalaje y Envio", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Impresión y Artes Gráficas", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Restaurante y Servicio de Comidas", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Comercio y Servicios", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Sitios y Negocios a la Venta", category_product_id: CategoryProduct.find_by(name: "Empresarial e Industrial").id)
CategoryProduct.create(name: "Instrumentos Musicales y Equipo", category_product_id: CategoryProduct.find_by(name: "Música").id)
CategoryProduct.create(name: "Música Grabada", category_product_id: CategoryProduct.find_by(name: "Música").id)
CategoryProduct.create(name: "Entradas y Experiencias", category_product_id: CategoryProduct.find_by(name: "Música").id)

CategoryService.destroy_all
CategoryService.create(name: Faker::Lorem.sentence(3, true, 2))
CategoryService.create(name: Faker::Lorem.sentence(3, true, 2))
CategoryService.create(name: Faker::Lorem.sentence(3, true, 2))
CategoryService.create(name: Faker::Lorem.sentence(3, true, 2))
CategoryService.create(name: Faker::Lorem.sentence(3, true, 2))
30.times do
  csid = CategoryService.limit(5).sample.id
  CategoryService.create(name: Faker::Lorem.sentence(3, true, 2), category_service_id: csid)
end

User.destroy_all
50.times do
  location = Geocoder.search(Faker::Internet.ip_v4_address).first
  User.create(email: Faker::Internet.email, password: "123456", name: Faker::StarWars.character, phone: "+56 9 "+Random.new.rand(80000000..99999999).to_s, picture: Faker::LoremPixel.image("100x100"), latitude: location.latitude, longitude:location.longitude)
end

Product.destroy_all
100.times do
  u = User.order('RANDOM()').limit(1).first
  p = Product.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraphs.join("\n"), state: ["Nuevo", "Usado", "Como Nuevo"].sample, quantity: Random.new.rand(1..2), location: Faker::Address.city + ", " + Faker::Address.state, latitude: u.latitude, longitude: u.longitude, category_product_id: CategoryProduct.order('RANDOM()').limit(1).first.id, user_id: u.id)
  for i in 0..5 do
    ProductPicture.create(picture: "https://picsum.photos/1000/1000/?random",number: i ,product_id: p.id)
  end
end

Service.destroy_all
100.times do
  u = User.order('RANDOM()').limit(1).first
  s = Service.create(name: Faker::Commerce.product_name+" Service", description: Faker::Lorem.paragraphs.join("\n"), location: Faker::Address.city + ", " + Faker::Address.state, latitude: u.latitude, longitude: u.longitude, category_service_id: CategoryService.order('RANDOM()').limit(1).first.id, user_id: u.id)
  for i in 0..5 do
    ServicePicture.create(picture: "https://picsum.photos/1000/1000/?random",number: i ,service_id: s.id)
  end
end

Post.destroy_all
PostItem.destroy_all
PostCategory.destroy_all
Comment.destroy_all
CommentItem.destroy_all
User.all.each do |user|
  p = Post.create(name: Faker::Lorem.sentence(3, true, 10), description: Faker::Lorem.paragraphs.join("\n"), location: Faker::Address.city + ", " + Faker::Address.state, user_id: user.id, longitude: user.longitude ,latitude: user.latitude)
  if Product.where(user_id: user.id).size > 0
    PostItem.create(wants: false, post_id: p.id, product_id: Product.where(user_id: user.id).first.id)
  end
  if Product.where(user_id: user.id).size > 1
    PostItem.create(wants: false, post_id: p.id, product_id: Product.where(user_id: user.id).second.id)
  end
  if Service.where(user_id: user.id).size > 0
    PostItem.create(wants: false, post_id: p.id, service_id: Service.where(user_id: user.id).first.id)
  end
  if Service.where(user_id: user.id).size > 1
    PostItem.create(wants: false, post_id: p.id, service_id: Service.where(user_id: user.id).second.id)
  end
  PostItem.create(wants: true, post_id: p.id, name: Faker::Commerce.product_name)
  if [true, false].sample
    PostItem.create(wants: true, post_id: p.id, name: Faker::Commerce.product_name)
  end
  if [true, false].sample
    PostCategory.create(wants: true, post_id: p.id, category_product_id: CategoryProduct.order('RANDOM()').limit(1).first)
  elsif [true, false].sample
    PostCategory.create(wants: true, post_id: p.id, category_service_id: CategoryService.order('RANDOM()').limit(1).first)
  end
  c = Comment.create(content: Faker::Lorem.sentence, user_id: User.where.not(id: user.id).order('RANDOM()').first.id, post_id: p.id)
  CommentItem.create(wants: false, name: Faker::Commerce.product_name, picture: "https://picsum.photos/300/300/?random", comment_id: c.id)
  CommentItem.create(wants: true, name: Faker::Commerce.product_name, picture: "https://picsum.photos/300/300/?random", comment_id: c.id)
  c2 = Comment.create(content: Faker::Lorem.sentence, user_id: user.id, post_id: p.id, comment_id: c.id)
  CommentItem.create(wants: true, name: Faker::Commerce.product_name, picture: "https://picsum.photos/300/300/?random", comment_id: c2.id)
  CommentItem.create(wants: false, name: Faker::Commerce.product_name, picture: "https://picsum.photos/300/300/?random", comment_id: c2.id)
  c3 = Comment.create(content: Faker::Lorem.sentence, user_id: User.where.not(id: user.id).order('RANDOM()').first.id, post_id: p.id)
  CommentItem.create(wants: false, name: Faker::Commerce.product_name, picture: "https://picsum.photos/300/300/?random", comment_id: c3.id)
  CommentItem.create(wants: true, name: Faker::Commerce.product_name, picture: "https://picsum.photos/300/300/?random", comment_id: c3.id)
end
