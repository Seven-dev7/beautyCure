# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def perform
    reset_seed
    create_user
    create_admin
    create_products
    create_services
end

def create_user
    counter = 0
    10.times do
        User.create!( email: "User#{counter}@mail.com", password: 'blablabla')
                counter += 1
    end
    p "10 users crées"
end

def create_admin
    User.create!( email: "admin@admin.com", password: 'oussama')
    p "Creation d'un admin log : admin@admin.com mdp: tu connais"
end

def create_products
    Product.create!( title: 'Shampoing', description: 'Rends vos cheveux plus doux : La base', price: 5)
    Product.create!( title: 'Gel-douche', description: 'Lave la peau : La base!', price: 25)
    Product.create!( title: 'Mascara', description: 'Sur les yeux: La base !', price: 50)
    p "3 produits crées Shampoing, Gel-douche et Mascara"
end

def create_services
    %w(yeux jambes pieds mains).each do |service|
        Service.create!( title: "Beauté des #{service}", description: "Mise en beauté des #{service}" , price: 75)
    end
end

def reset_seed
    User.destroy_all
    Product.destroy_all
    Service.destroy_all
    p "All Models DELETED"
end


perform
p 'seed done !  dedicasse a JPette'