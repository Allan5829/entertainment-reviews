# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [X] Use ActiveRecord for storing information in a database
    has database and uses migrations in the db folder
- [X] Include more than one model class (e.g. User, Post, Category)
    includes a User and Review class in app/model folder
- [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    User has many reviews in app/model/user.rb
- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    Reviews belong to user in app/model/review.rb
    
- [X] Include user accounts with unique login attribute (username or email)
    Users model validates uniqueness
- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    Reviews controller has routes for each CRUD action
- [X] Ensure that users can't modify content created by other users
    In order to modify content the review's user_id must match the current user id.
- [X] Include user input validations
    Validates that certain fields must be filled in
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
    At readme.md

Confirm
- [X] You have a large number of small Git commits 
    30
- [X] Your commit messages are meaningful
    For the most part yes, although I may have forgotten a small change here and there.
- [X] You made the changes in a commit that relate to the commit message
    For the most part yes.
- [X] You don't include changes in a commit that aren't related to the commit message
    Only if I forgot to mention it.
