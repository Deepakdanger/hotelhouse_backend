
# In-Home Website -Backend
It is the website about Buying and Renting your sweet home.Here we provides catalogs of houses and home in various categories. Here I fetch data from By Backend Data via API Link.
Here I've used different animation in CSS to improve my website UI framework.


 ![Home Screen](src/assets/imgscreen/screen1.PNG)
 ![Login Screen](src/assets/imgscreen/screen2.PNG)
 ![House List Screen](src/assets/imgscreen/screen3.PNG)
 ![Favourite List Screen](src/assets/imgscreen/screen4.PNG)

## Built With
- Rails
- Ruby
- Javascript
- React
- Redux
- CSS Bootstrap

## Live Demo

Click on the link below for accessing the deployed website.
### [In-Home Website](https://thirsty-wescoff-f34d62.netlify.app/)</p>

Deployed Backend link

### [In-Home Website-BAckend ](https://floating-harbor-48342.herokuapp.com/)</p>

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites
- A browser
- Node js (optional)

### Setup

All code below are for a terminal.

1. Clone repository: 
```sh
  $ git clone https://github.com/Deepakdanger/hotelhouse_backend.git
```
2. Change directory inside project
```sh
cd hotelhouse_backend
```
3. Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ bundle install
```

4. Next, setup webpacker configuration

```
$ rails webpacker:install
```

5. After that, create and migrate the database:

```
$ rails db:create
$ rails db:migrate
```

6. To run the project on rails local server:

```
$ rails server
```
## Deploying

you’ll need a Heroku account

To deploy this, you’ll need to create a new Heroku application, switch to the right branch, push up the source, run the migrations, and seed the database with sample users:

```
$ heroku create
$ git checkout feature
$ git push heroku feature:master
$ heroku run rails db:migrate
$ heroku run rails db:seed
```

Visiting the URL returned by the original `heroku create` should now show you the sample website running in production. 

## Branches

Simply check out the corresponding branch using `git checkout`:

```
$ git checkout <branch name>
```
## Testing

For test, In Gemfile include:

```
group :development, :test do
  gem "database_cleaner"
  gem "rspec-rails"
end
```
Then, run `bundle install` and run
```
$ run rails generate rspec:install
```
## Author

![Deepak Kumar's GitHub stats](https://github-readme-stats.vercel.app/api?username=Deepakdanger&count_private=true&theme=dark&show_icons=true)

👤 **DEEPAK KUMAR**
- GitHub: [@githubhandle](https://github.com/Deepakdanger)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Deepakdanger/hotelhouse_backend/issuess).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

