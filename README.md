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

6. Moving on to our view and signup form
  - for time, I stole this template, lets just copy paste and give a shout out to the [Pure Css Framework](purecss.io)
  - CDN:```<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">```
  - lets add the cdn to our application layout's header
  - code for our views
  <details><summary>
  ```<div class="splash-container">
    <div class="splash">

        <h1 class="splash-head">My Super Awesome Signup Page</h1>

        <div class="pure-form pure-form-aligned">
        <%= form_for :user, url: '/users' do |f| %>
          <fieldset>
            <div class="pure-control-group">
              <label class="label" for="name">Email</label>
              <%= f.text_field :email %>
            </div>

            <div class="pure-control-group">
              <label class="label" for="password">Password</label>
              <%= f.password_field :password %>
            </div>

            <div class="pure-control-group">
              <label class="label" for="foo">Password Confrimation</label>
              <%= f.password_field :password_confirmation %>
            </div>

            <div class="pure-controls">
              <%= f.submit class:"pure-button pure-input-1-4", value:"Submit"%>
            </div>
          </fieldset>
        <% end %>
        </div>

    </div>
  </div>
  ```
  </summary></details>
