# Bill Murray Movie Review CLI app

## About this app
This app is a basic version of a movie review app. It only uses movies starring Bill Murray. It allows users to get movie information, and to review movies that they have seen.

## Why make this app?
The creators made this app with the intent of solidifying concepts of back - end development. In order to have this application be fully functional, a many to many relationship between users and movies had to be established in sqlite3 through ruby's active record gem. By the time version 1 of the app was complete, both creators felt like they had a much better understanding of how data modeling works, and the difficulties and intricacies assosiated with it.

## installation
To install this application, clone the repository into a folder on your computer using the following command line
```bash
git clone git@github.com:jjhiggz/Jon-s-Project.git
```
After cloning the folder into your computer, run the folloowing command to establish a local database on your system.

```bash
rake db:migrate 
```

Now you will need to seed your database. To do this run the following command
```bash 
rake db:seed
```
When seeding data, a list of fake users is seeded. If further expanded to a web application, then at some point all user inputs would be  real users signed up for the app. 

To begin type the following into your terminal

```bash
ruby runner.rb
```

From this point forward, the app should walk you through everything that you need to do.

You can now try to log in, sign up, write review, look at movie stats, find a movie, change a review, or delete a review. 

Please enjoy!!!!!

