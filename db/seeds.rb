# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  @user1 = User.create(name: "jose1", email: 'user1@hotmail.com', password: 123456, password_confirmation: 123456)
@user2 = User.create(name: "jose2", email: 'user2@hotmail.com', password: 123456, password_confirmation: 123456)
@user3 = User.create(name: "jose3", email: 'user3@hotmail.com', password: 123456, password_confirmation: 123456)

Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user1)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user1)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user1)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user2)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user3)
