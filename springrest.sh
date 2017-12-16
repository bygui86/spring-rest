#!bin/sh

# Prerequisites:
#	. Java
#	. Gradle
#	. Postman [optional]

# Compile with Gradle
./gradlew build

# Run the application
java -jar build/libs/rh-springrest-0.1.jar

# Use either Postman to test the application ...
# ... (install if not already) open Postman, import the collection provided with the project and run some tests

# or curl on CLI ...
# Insert new user
curl -i -X POST -H "Content-Type:application/json" -d '{  "name" : "Test", "email" : "test@test.com" }' http://localhost:8080/users
# Get all users
curl -i -X GET http://localhost:8080/users
# Get specific user
curl -i -X GET http://localhost:8080/users/1
# Search all users with name “test”
curl -i -X GET http://localhost:8080/users/search/findByName?name=Test
