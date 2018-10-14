# Calorie Camera
Designed by Mingxuan Fan, Jining Song, Xiaochen Li @ SD Hacks 2018

## Inspiration
We are planning to design a user-friendly app to help people keep track of the nutrition especially calorie they take, which decreases the rate of obesity and helps users to create a dietary plan.

## What it does
Take a picture; the app will then calculate the calories of the food through deep learning and artificial intelligence thanks to Clarifai API, it then send the result back and took the nutrition data from the database as the calorie the user gained from the meal.

## How we built it
We created a website and an iOS app using JavaScript, PHP, and swift. Vue and Laravel are used as the framework. The picture the user took will be sent to the Clarifai API; the App will receive a JSON file and then form into a user-friendly format.

## Challenges we ran into
Encoding and transmitting photos between clients and servers. Selecting related data (Clarifai detect everything on the graphic, so we have to filter out the not related items.) Also, we need to distribute the Calorie data to the food respectively through another API.

## Accomplishments that we're proud of
We utilize Clarifai API to create a mobile app and web app at the same time. Also, the program is designed for the good of all human beings, since everyone who uses it will be able to keep track of the calorie S/he takes in to have a better control of their own physical health.

## What we learned
New Skills and Collaboration! We also explore the area we are not familiar before but long willing to be working on.

## What's next for Calorie camera
Next update would include a Food Diary which records the users' daily calorie data and a Fitness plan which is generated accordingly.

### The App utilize the following sources
* Laravel Framewor
* Clarifai API
* etc.

