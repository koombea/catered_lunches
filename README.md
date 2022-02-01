# Rotating Lunch Schedule

Rotating Lunch Schedule is a project to track menu in a calendar from current date to the date that you chose.
## Requirements
- Ruby 3.0.1
- Rails 7

## Installation

1. Clone the repository and setup.
```bash
$ git clone https://github.com/koombea/catered_lunches.git
```

2. Execute the comands below.
```bash
bundle install
 rails db:create
 rails db:migrate
 rails db:seed
```

## To run test

Execute the comands below.
```bash
rails db:test:prepare
rspec spec
```

## Starting the app


```bash
rails s
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
