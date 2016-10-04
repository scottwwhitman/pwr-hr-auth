# 30 Minute Sprint AUTH

(add a gif)

Feel free to fork this repo for future use! But for today we are going to build it from scratch, in a 30 minute sprint. What what?!?

(add a what what gif)

## Steps

1. Lets create a new rails application
  - rails new auth_app -T -B -d postgresql
  - add bcrypt
  - bundle
  - rails db:create

2. Now lets move on to our model
  - rails g model user email password_digest
  - rails db:migrate

3. We need to now update our routes
  - users will need to be able to '/signup' duh
  - lets make a '/signup' and '/users' route

4. And now we need to make a controller to handle our user methods
  - rails g controller users

5. In our controller we can set up our new and create methods
  - we should also make out user_params as well since we are here
  - lets make it a private method

6. 
