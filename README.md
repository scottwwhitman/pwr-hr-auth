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
  - code for our view:
  ```html
    <div class="splash-container">
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
  - code for stylesheet:
  ```css
    .label {
      color: ghostwhite;
    }
    .splash-container {
      background: #1f8dd6;
      z-index: 1;
      overflow: hidden;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      position: fixed !important;
    }
    .splash {
      width: 80%;
      height: 50%;
      margin: auto;
      position: absolute;
      top: 0; left: 0; bottom: 0; right: 0;
      text-align: center;
      text-transform: uppercase;
    }
    .splash-head {
      font-size: 60px;
      font-weight: bold;
      color: white;
      border: 3px solid white;
      padding: 1em 1.6em;
      font-weight: 100;
      border-radius: 5px;
      line-height: 1em;
    }
    .splash-subhead {
      color: white;
      letter-spacing: 0.05em;
      opacity: 0.8;
    }
    .pure-button {
      background: ghostwhite;
      color: #1f8dd6;
    }
  ```
7. Now Lets update our controller's create methods

8. And then we'll update our user model
  - add has_secure_password

9. And just like that User is done! (Not really...) But, now we need to handle our sessions
  - lets make our controller
  - this will deal with logging in and out

10. We need a view and a route for login
  - Lets use this code for our view:
  ```html
    <div class="splash-container">
      <div class="splash">
        <h1 class="splash-head">My Super Awesome Login Page</h1>

        <div class="pure-form pure-form-aligned">

        <%= form_tag '/login' do %>
          <fieldset>
            <div class="pure-control-group">
              <label class="label" for="name">Email</label>
              <%= text_field_tag :email %>
            </div>

            <div class="pure-control-group">
              <label class="label" for="password">Password</label>
              <%= password_field_tag :password %>
            </div>

            <div class="pure-controls">
              <%= submit_tag "Submit", class:"pure-button pure-input-1-4" %>
            </div>
          </fieldset>
        <% end %>

      </div>
      </div>
    </div>
  ```
  - why use the form_tag?

11. And we need our current_user helper

12. FINALLY lets clean up a few things and add if statements to our front end
```html
  <% if current_user %>
    <h1 class="splash-head">My Super Awesome Web App</h1>
    <a href="/logout" class="pure-button pure-input-1-4">Logout</a>
  <% else %>
```
