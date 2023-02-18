<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

OPTIONAL SECTIONS:
- FAQ

After you're finished please remove all the comments and instructions!
-->

<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
  <h3><b> RECIPE APP 🧁 (Ruby on Rails)</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 RECIPE APP 🧁 ](#-recipe-app--)
  - [🛠 Built With Ruby on Rails](#-built-with-ruby-on-rails)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 RECIPE APP 🧁 <a name="about-project"></a>

> Our Recipe App is now fresh out of the oven! Don't forget how to cook that special meal, now you can save it in this APP!

**RECIPE APP 🧁** is an APP made with Ruby on Rails. Taste it!

## 🛠 Built With <a name="built-with">Ruby on Rails</a>

### Tech Stack <a name="tech-stack"></a>

> Front-end/ Back-end : Ruby on Rails
> Database: Postgre (SQL)

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://https://code.visualstudio.com//">Visual Studio Code</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/es/">Ruby</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.



<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> You can see the deployment once it is executed in the next link.

- [rails server](https://127.0.0.1:3000/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

> Install a text-editor you prefer. [Code editors](https://desarrolloweb.com/colecciones/editores-codigo).

> You need a database
- [SQLlite](https://www.sqlite.org/index.html)
- [MySQL](https://www.mysql.com/)
- [Postgresql](https://www.postgresql.org/)

> [Ruby](https://www.ruby-lang.org/en/downloads/)


> [Ruby on Rails Framework](https://rubyonrails.org/)

### Setup

Clone this repository to your desired folder:

> You must have an account on git hub. [Git Hub](https://github.com/)

> You must have installed git in your local environment. [Git](https://git-scm.com/download/win)

> If you just want to take a look quickly, make a fork and open the project in the web browser by adding ".dev" instead of ."com" in the repo link.
- Example : https://github.dev/J2ZROMERO/RecipeApp

### Install

Install this project with:

Execute the bundle in your terminal with the path of 
the directory.

> Execute "rails bundle" in your terminal with the specific path in order to add all the gems.

> You have to change the data bases' crentials.

> When the project si already installed execute:
 - rake db:setup or rails db:setup
    - Once this in being executed the nexts actions are generated 
    - rake db:create
    - rake db:schema:load
    - rake db:seed

> If you already have  the project in your local you can pull the lastes commit and execute the next commands:
  - rails db:reset
  - rails db:migrate:reset
  - rails db:seed

### Usage

To run the project, execute the following command:

- Once your credential is ready execute
> Ruby bin/rails db:setup

- After db:setup is executed the file seed.rb is going to execute immediately this will add prepared data to your database, and you can test the customized methods from models.

- After that execute:
> Ruby bin/rails db:migrate

- This command will ensure to load the models to tests it.



### Run tests

- To run the tests please follow the next instruccions.
> The gem database_cleaner let us clean all the database before execute the test (:warning This gem only works for test and don't allow any input to the original data base), to use this gem is necesary to add some characteristics to the rails_helper.rb
- Add the next gem : gem 'database_cleaner' to the Gemfile
- Execute: bundle install.
- Ruby bin/rails db:migrate RAILS_ENV=test 
  - The code above will ensure to prepare the modules for tests.
- Execute: [ rspec ] if you wan to see all the tests working.
- or execute rspec spec/models/NAME-OF-THE-MODEL_spec.rb  if you want to run a especific file.
- If you want to see the tests existing and their definitions please run: " rspec --force-color --format documentation "
- To check the tests's controllers please execute the next command on your root project console: "" rspec spec/requests/ ""  you will see all the tests' controllers in execution.
- In order to see Capybara tests you can execute:
  " rspec spec/models" all the tests of the models, you can name another directory instead.
  " rspec spec/model/file.rb " single file.
### Deployment

You can deploy this project using:

> Ruby bin/rails server
- Go to your browser in the next directions to interact with the apps.
> http://localhost:3000/ 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

**JOSE ZEPEDA**

- GitHub: [J2ZROMERO](https://github.com/J2ZROMERO)
- Twitter: [@JOSEZEPED4](https://twitter.com/JOSEZEPED4)
- LinkedIn: [JOSE ZEPEDA](https://www.linkedin.com/in/jose-zepeda-733ab91ab/)

👤 **LUCAS BERMUDEZ**

- GitHub: [@Oklukeok](https://github.com/Oklukeok)
- LinkedIn: [LinkedIn](https://linkedin.com/in/lucas-bermudez/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] ** Blog **
- [ ] ** Sharing recipes with other users **


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project hit the ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

“A recipe has no soul. You as the cook must bring soul to the recipe.”
– Thomas Keller

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/J2ZROMERO/RecipeApp/blob/dev/MIT.md) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
