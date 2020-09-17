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
    Service.create!( title: "Vernis", description: "Pose de vernis simple" , price: 2000, duration: 15)
    Service.create!( title: "Vernis", description: "Pose de vernis permanent" , price: 5000, duration: 15)
    Service.create!( title: "Gel", description: "Pose de gel simple" , price: 10000, duration: 15)
    Service.create!( title: "Gel", description: "Pose de gel permanent" , price: 15000, duration: 15)
    Service.create!( title: "Résine & Vernis", description: "Pose de résine accompagné d'un vernis simple" , price: 12000, duration: 15)
    Service.create!( title: "Résine & Vernis", description: "Pose de résine accompagné d'un vernis permanent" , price: 15000, duration: 15)
    Service.create!( title: "Remplissage Résine Simple", description: "Remplissage à la Résine et pose d'un vernis simple" , price: 5000, duration: 15)
    Service.create!( title: "Remplissage Résine Permanent", description: "Remplissage à la Résine et pose d'un vernis permanent" , price: 6500, duration: 15)
    Service.create!( title: "Remplissage Gel simple", description: "Remplissage au Gel simple" , price: 5000, duration: 15)
    Service.create!( title: "Remplissage Gel permanent", description: "Remplissage au Gel permanent" , price: 5000, duration: 15)
    Service.create!( title: "Vernis Pieds", description: "Pose de vernis simple" , price: 5000, duration: 15)
    Service.create!( title: "Pédicure simple", description: "Soins de pédicure accompagné de la pose d'un vernis simple" , price: 10000, duration: 15)
    Service.create!( title: "Pédicure permanente", description: "Soins de pédicure accompagné de la pose d'un vernis permanent" , price: 13000, duration: 15)
    Service.create!( title: "Pédicure Royale", description: "Soins de pédicure complet" , price: 13000, duration: 15)
    Service.create!( title: "Epilation", description: "Epilation des aisselles" , price: 6000, duration: 15)
    Service.create!( title: "Epilation + Soins", description: "Epilation des aisselles accompagné d'un soin au miel" , price: 7000, duration: 15)
    Service.create!( title: "Epilation Maillot", description: "Epilation du maillot simple" , price: 6500, duration: 15)
    Service.create!( title: "Epilation Maillot +", description: "Epilation du maillot intégrale" , price: 15000, duration: 15)
    Service.create!( title: "Epilation bas du corps", description: "Epilation des jambes" , price: 10000, duration: 15)
    Service.create!( title: "Epilation bas du corps 1/2", description: "Epilation des jambes à moitié" , price: 7000, duration: 15)
    Service.create!( title: "Gommage", description: "Gommage complet du corps" , price: 20000, duration: 15)
    Service.create!( title: "Massage 1h", description: "Massage du corps à la pierre chaude" , price: 25000, duration: 60)
end

def reset_seed
    User.destroy_all
    Product.destroy_all
    Service.destroy_all
    p "All Models DELETED"
end


perform
p 'seed done !  dedicasse a JPette'