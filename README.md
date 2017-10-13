## Users API
Users API is a project to create, list, update, destroy and activate users.

### System requirements:
* Ruby version 2.4.1
* Rails version 5.1.4

### Installation

Clone the project:
`$ git clonehttps://github.com/LuizaMagalhaes/users-api.git`

Run:
`$ bundle install`

To run the suite of test : `$ rspec`

To create a Database: `$ rails db:create`

To run the migrations: `$ rails db:migrate`

The user have the following params:
* name;
* email;
* phone;
* cpf;
* status

### ENDPOINTS:
`GET "/users"` => Users list

`POST "/users/new"` => Create a new user

`PUT "/users/:id/edit"` => Update a user

`PUT "/users/:id/activate"` => Activate the user

`DELETE "/users/:id"` => Delete a user
