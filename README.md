[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h2 align="center"> Tennix Sports Blog - All about Tennis</h2>
  <p align="center">
     A webpage where you can find articles about tennis. The articles are divided by categories in a many-to-many relationship. The webpage manages user signups, and each user can create and upvote articles if they are logged in.
    <br />
    <a href="https://github.com/kitpao/rails_tennis_articles_page_with_design"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://tennix-sports-blog.herokuapp.com/">View Demo</a>
    ·
    <a href="https://github.com/kitpao/rails_tennis_articles_page_with_design/issues">Report Bug</a>
    ·
    <a href="https://github.com/kitpao/rails_tennis_articles_page_with_design/issues">Request Feature</a>
  </p>
</p>

## Table of Contents
* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Instalation guide](#instalation-guide)
* [Run Tests](#run-tests)
* [Roadmap](#roadmap)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)
<!-- ABOUT THE PROJECT -->

## About The Project
<em>Click on the image to visit the live version!</em>
[![Product Name Screen Shot][product-screenshot]](https://tennix-sports-blog.herokuapp.com)

Capstone projects are solo projects at the end of the each of the Microverse Main Technical Curriculum sections. Building this project is very important because:

- It's a real-world-like project, built with business specifications

The project for Ruby on Rails capstone is based on lifestyle articles website, based on the design of [Nelson Sakwa on Behance](https://www.behance.net/sakwadesignstudio)

The Entity Relationship Diagram used in the database
![image](https://user-images.githubusercontent.com/53256139/90346832-e0367880-dff1-11ea-8efd-b0e573f259fd.png)


The User Interface specifications for this project are: 
* The project is a desktop web app, currently supports Firefox.
* App validates all user input
* The app is an MVP of the full product (with the full graphical design but only basic features that can be easily extended in the future)
* The project is deployed and accessible online here: https://tennix-sports-blog.herokuapp.com/
* The user logs in to the app, only by typing the username (a proper authenticated login is not a requirement)
* The user is presented with the homepage that includes:
  * Featured article with full-width image and title in the first row. This should be an article with the biggest number of votes.
  * List of all categories in order of priority. Each category should be displayed as a square with its name on the top and its most recent article's title in the bottom. The background image should be the image of the most recent article in this category.
* When the user clicks the category name they can see all articles in that category:
  * Articles are sorted by most recent.
  * Each article displays: image, title, truncated text as preview and its author name.
  * Add extra button to add a vote for article (each user can vote only once).
* Each page should use the same top menu and footer:
  * Top menu is presented at the *Homepage* sketch. It should include only links to pages that are implemented.
  * Footer is presented at the *Articles in selected category page* sketch.
* When user opens "*Write an article*" page:
  * A form with all necessary fields is displayed.

Technical features of the project:
- Use Active Storage and Cloudinary for users uploaded images
- If an image is not provided, a random image from Unsplash is taken
- Use RESTFUL routes
- Use controllers to intercept user requests
- Use view templates for HTML with embedded data
- Use assets pipeline
- Connect Database to app
- Use Active Record as ORM
- Use Active Record associations to model real life system (based on Database schema)
- Use Active Record queries to translate app requirements to SQL queries
- Use ActiveRecord validations
- Pass user input from view through controller to model in a safe way
- Use thin controllers and distinguish between logic and presentation tiers
- Avoid n+1 queries problem
- Use unit tests (Rspec)
- Use ActiveRecord validations
- Deploys to Heroku

Outside requirements feature:
- The webpage is responsive

### Built With
The project was developed using the following technologies:
- [RUBY](https://www.ruby-lang.org/es/)
- [RUBOCOP LINTERN](https://github.com/microverseinc/linters-config/tree/master/ruby)
- [RAILS](https://rubyonrails.org/)

## Instalation Guide
Click on the following [link](https://gitpod.io/github.com/kitpao/rails_tennis_articles_page_with_design/tree/mvp-branch),

* Wait for the workspace to load and then click on the terminal, type `bundle install` and hit enter to install gems
* Then `yarn install --check-files` and hit enter
* Run `rails db:setup` and hit enter
* Run `rails c` and hit enter to interact with the objects in the console (User, Vote, Article, Category: see the schema for more information)

-> or see the direct page working on https://tennix-sports-blog.herokuapp.com/categories/1 and you can test it directly in the browser!!

## Run Tests
After following the previous steps, run `rspec` on terminal

## Roadmap

See the [open issues](https://github.com/kitpao/rails_tennis_articles_page_with_design/issues) for a list of proposed features (and known issues).

## Contact
<p align="center">

  Project Link: [https://github.com/kitpao/rails_tennis_articles_page_with_design](https://github.com/kitpao/rails_tennis_articles_page_with_design)

<p align="center">

  Kitzia Paola Vidal Marroquin - [Github user: kitpao](https://github.com/kitpao)
</p>
<p align="center" style="display: flex; justify-content: center; align-items: center;">
    <a target="_blank" href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=kitpao91@gmail.com">
      kitpao91@gmail.com
    </a> &nbsp; |
    <a target="_blank" href="https://github.com/kitpao/Personal_Projects">
        Portfolio
    </a> &nbsp; |
    <a target="_blank" href="https://www.linkedin.com/in/kitzia-paola-vidal/">
      LinkedIn
    </a> &nbsp; |
    <a target="_blank" href="https://twitter.com/Kitpao1">
      Twitter
    </a>
</p>

## Acknowledgements
- [Microverse curriculum Rails section](https://www.microverse.org/?grsf=6ns691)
- [Rails Guides](https://guides.rubyonrails.org)
- Design acknowledge to [Nelson Sakwa on Behance](https://www.behance.net/sakwadesignstudio)

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/kitpao/rails_tennis_articles_page_with_design.svg?style=flat-square
[contributors-url]: https://github.com/kitpao/rails_tennis_articles_page_with_design/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/kitpao/rails_tennis_articles_page_with_design.svg?style=flat-square
[forks-url]: https://github.com/kitpao/rails_tennis_articles_page_with_design/network/members
[stars-shield]: https://img.shields.io/github/stars/kitpao/rails_tennis_articles_page_with_design.svg?style=flat-square
[stars-url]: https://github.com/kitpao/rails_tennis_articles_page_with_design/stargazers
[issues-shield]: https://img.shields.io/github/issues/kitpao/rails_tennis_articles_page_with_design.svg?style=flat-square
[issues-url]: https://github.com/kitpao/rails_tennis_articles_page_with_design/issues
[license-shield]: https://img.shields.io/github/license/kitpao/rails_tennis_articles_page_with_design.svg?style=flat-square
[license-url]: https://github.com/kitpao/rails_tennis_articles_page_with_design/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/kitzia-paola-vidal/
[product-screenshot]: app/assets/images/desktop.png
