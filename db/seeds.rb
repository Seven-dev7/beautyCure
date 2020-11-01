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
    create_employee
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
    Service.create!( title: "Vernis-s", description: "Pose de vernis simple" , price: 2000, duration: 15)
    Service.create!( title: "Vernis-p", description: "Pose de vernis permanent" , price: 5000, duration: 15)
    Service.create!( title: "Gel-s", description: "Pose de gel simple" , price: 10000, duration: 15)
    Service.create!( title: "Gel-p", description: "Pose de gel permanent" , price: 15000, duration: 15)
    Service.create!( title: "Résine & Vernis-s", description: "Pose de résine accompagné d'un vernis simple" , price: 12000, duration: 15)
    Service.create!( title: "Résine & Vernis-s", description: "Pose de résine accompagné d'un vernis permanent" , price: 15000, duration: 15)
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
    Service.create!( title: "Micro-Shading (MS)", description: "Soin ayant pour but de produire un effet d’ombrage semblable à celui du crayon à sourcils" , price: 190000, duration: 60)
    Service.create!( title: "Micro-Blading (MB)", description: "Soin ayant pour but de produire un effet de poil" , price: 140000, duration: 60)
    Service.create!( title: "Retouches", description: "Lorsqu'un soin complet n'est pas nécessaire" , price: 35000, duration: 60)
    Service.create!( title: "Combos", description: "MicroShading + Microblading" , price: 210000, duration: 60)
    Service.create!( title: "Detatouage", description: "Retrait de tatouage du simple" , price: 50000, duration: 60)
    Service.create!( title: "Detatouage", description: "Retrait de tatouage complexe" , price: 100000, duration: 60)
    Service.create!( title: "Extensions de cils v1", description: "Extensions de cils naturels" , price: 15000, duration: 60)
    Service.create!( title: "Extensions de cils v2", description: "Extensions de cils compléte" , price: 20000, duration: 60)
    Service.create!( title: "Extensions de cils v3", description: "Extensions de cils Sophistiquée" , price: 30000, duration: 60)
    Service.create!( title: "Extensions de cils v4", description: "Extensions de cils Russe" , price: 50000, duration: 60)
    Service.create!( title: "Remplissage de cils", description: "Remplissage de cils" , price: 10000, duration: 60)
    Service.create!( title: "Nettoyage du visage", description: "Soins compléts nettoyant pour le visage" , price: 12000, duration: 60)
    Service.create!( title: "Nettoyage du visage+", description: "Soin complét nettoyant pour le visage accompagné d'un gammage et d'une réhydratation" , price: 20000, duration: 60)
    Service.create!( title: "Soins du visage", description: "Soin complet à base de créme nourrissantes et réhydratantes" , price: 25000, duration: 60)
    Service.create!( title: "Combo Soins du visage", description: "Soin complet à base de créme nourrissantes et réhydratantes + gommage" , price: 25000, duration: 60)
    Service.create!( title: "Blanchissement dentaire", description: "Soin complet de blanchiment des dents" , price: 45000, duration: 60)
    Service.create!( title: "Blanchissement dentaire, Forfait 3 séances", description: "Soin complet de blanchiment des dents x 3" , price: 120000, duration: 60)
    Service.create!( title: "Microneedling", description: " Soin complet visant à corriger les plus gros complexes du visage. Acné, taches, teint terne, pores dilatés…" , price: 73000, duration: 60)
    Service.create!( title: "Microneedling, Forfait 3 séances", description: " Soin complet visant à corriger les plus gros complexes du visage. Acné, taches, teint terne, pores dilatés. x3" , price: 195000, duration: 60)
    Service.create!( title: "Bbglow, Forfait 3 séances", description: " Ce soin visage fait pénétrer des pigments colorés dans la peau à l’aide de micro-aiguilles. Résultat : plus besoin d’utiliser de fond de teint pendant des mois. " , price: 50000, duration: 60)
    Service.create!( title: "Bbglow, Forfait 3 séances", description: " Ce soin visage fait pénétrer des pigments colorés dans la peau à l’aide de micro-aiguilles. Résultat : plus besoin d’utiliser de fond de teint pendant des mois.  x3" , price: 110000, duration: 60)
    Service.create!( title: "Microneedling + Bbglow", description: "Bbglow + Microneedling" , price: 110000, duration: 60)
end

def create_employee
    Employee.create!(first_name: "Jack", last_name: "O'neil")
    Employee.create!(first_name: "Francois", last_name: "Mitterand")
    Employee.create!(first_name: "Manu", last_name: "Macron")
    Employee.create!(first_name: "Donald", last_name: "Trump")
    Employee.create!(first_name: "Jack", last_name: "Lang")
    Employee.create!(first_name: "John", last_name: "Doe")
end

def reset_seed
    User.destroy_all
    Product.destroy_all
    Service.destroy_all
    Employee.destroy_all
    p "All Models DELETED"
end


perform
p 'seed done !  dedicasse a JPette'