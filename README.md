# Aught 
### Borrow something, anything and everything from your local communityHow

#####What is Aught?
Aught is a concept for a 'thing' sharing website. Users can login and view items that people in their community are sharing and they can share items themselves.

Many high price items spend much of their time gathering dust. When we all share we all buy less stuff. Then when we do buy something then we can spend more on items that are better. In short when we share the world becomes a better place.

**See the live version here <http://aughtapp.herokuapp.com>**


#####Planning
**Trello** 
Trello was used to plan and track progress.

![alt text](http://aughtapp.s3.amazonaws.com/uploads/Trello.png "Aught Trello board")

**ERD** 

Draw.io was used to plan the ER Diagrams.

![alt text](http://aughtapp.s3.amazonaws.com/uploads/ERD.png "Aught ER Diagram ")

**Wireframes**

Balsamiq was used to plan the layout of every page.

![alt text](http://aughtapp.s3.amazonaws.com/uploads/wireframes.png "Aught ER Diagram ")

___

#####Technology used
* Ruby
* Ruby on Rails
* JQuery / Javascript
* ERB templates
* CSS3
* HTML5
* Carrierwave gem (Image uploading)
* Devise gem (Authentication handling)
* Bootstrap v4
* Select2
* AWS S3 Storage
* Heroku Deployment
* Postgresql Database
* Sublime editor
* Adobe Photoshop
* Chrome
* MacDowm
* Balsamiq

***

#####Plans for improvement
* Implement the search features
* Add responsive formats to the pages to be more mobile friendly
* Make the seed file more colourful with more detailed content for things and profiles.
* Make the messaging system realtime (websocket)
* Make the UI more pleasing to use through animation.
* Add the locations model to the app and extend the users to be location aware. i.e. only show things in a certain distance of their profile location.
* Add email reovery for passwords.  

***
***

####What you need to do to get the app up and running locally:

1. Clone from github
2. Run ```bundle``` from the terminal to get the correct gems
3. Run ```rails db:create db:migrate db:seed``` to get the database setup  
4. Run ```rails s``` to start the server
5. Go to localhost:3000 in your browser
