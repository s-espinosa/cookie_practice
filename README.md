# Horses Love Cookies

A bare-bones Rails app to demonstrate how cookies, sessions, and flashes work.

## Setup

If you have not already, install the [EditThisCookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en) Chrome extension.

Then, clone this repository and run the following commands from within the project directory:

```
$ bundle
$ rake db:create db:migrate db:test:prepare db:seed
```

## Exploration

### Review Files

Review the following files:

* `/app/views/horses/show.html.erb`
* `/app/views/horses/index.html.erb`
* `/app/views/layouts/application.html.erb`
* `/app/controllers/horses_controller.rb`

### Explore the Site

Fire up your server with `rails server`, and visit the horses index at `127.0.0.1:3000/horses`. Be sure to check the values available in EditThisCookie as you complete the exercises below.

* Uncomment and comment out the different lines in the `#index` action on the `HorsesController` while reloading the horses index. What does each seem to do?
* Visit `/horses/1`, and try passing different parameters based on the values you see in the `HorsesController` using query params. For example, you might first visit:

```
/horses/1?flashing=render_now
```

* Try to visit each one a few times in a row to see what flash message displays. Can you come up with any rules regarding the difference between `flash.now` and `flash`, andd their relationship to `render`/`redirect_to`?
* Write down the rules for sessions, cookies, and flashes, as you understand them based on your exploration.
