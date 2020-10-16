# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: Rails.application.credentials.admin_email,
            password: Rails.application.credentials.admin_password,
            password_confirmation: Rails.application.credentials.admin_password) unless
             AdminUser.find_by(email: Rails.application.credentials.admin_email)
if Rails.env == "development"
  product1 = Product.find_by(name: "product1") ||
    Product.create(name: "product1",
     varieties: ["variety1_product1, variety2_product1"]
     )
  product2 = Product.find_by(name: "product2") ||
    Product.create(name: "product2",
     varieties: ["variety1_product2, variety2_product2"]
     )
end
