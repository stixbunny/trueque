# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

CategoryProducts.destroy_all
CategoryProducts.create(name: "Motores")
CategoryProducts.create(name: "Moda")
CategoryProducts.create(name: "Electronica")
CategoryProducts.create(name: "Colleccionables y Arte")
CategoryProducts.create(name: "Hogar y Jardín")
CategoryProducts.create(name: "Deporte")
CategoryProducts.create(name: "Juguetes y Pasatiempos")
CategoryProducts.create(name: "Empresarial e Industrial")
CategoryProducts.create(name: "Musica")
CategoryProducts.create(name: "Partes y Accesorios")
CategoryProducts.create(name: "Vehículos")
CategoryProducts.create(name: "Belleza")
CategoryProducts.create(name: "Carteras y Accesorios")
CategoryProducts.create(name: "Salud")
CategoryProducts.create(name: "Joyería")
CategoryProducts.create(name: "Niños y Bebé")
CategoryProducts.create(name: "Ropa para Hombre")
CategoryProducts.create(name: "Zapatos")
CategoryProducts.create(name: "Relojes")
CategoryProducts.create(name: "Ropa para Mujer")
CategoryProducts.create(name: "Cámara y Fotografía")
CategoryProducts.create(name: "Electrónica Automotriz")
CategoryProducts.create(name: "Celulares y Accesorios")
CategoryProducts.create(name: "Computadoras y Tablets")
CategoryProducts.create(name: "TV, Video y Audio")
CategoryProducts.create(name: "Videojuegos y Consolas")
CategoryProducts.create(name: "Antiguedades")
CategoryProducts.create(name: "Arte")
CategoryProducts.create(name: "Monedas y Papel Moneda")
CategoryProducts.create(name: "Coleccionables")
CategoryProducts.create(name: "Comics")
CategoryProducts.create(name: "Muñecas y Osos")
CategoryProducts.create(name: "Objetos de Interés del Entretenimiento")
CategoryProducts.create(name: "Cerámica y Vidrio")
CategoryProducts.create(name: "Objetos de Interés del Deporte")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")
CategoryProducts.create(name: "")

create_table "category_products", force: :cascade do |t|
  t.string "name"
  t.bigint "category_product_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["category_product_id"], name: "index_category_products_on_category_product_id"
end

create_table "category_services"
