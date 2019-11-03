# ReadMe

Section 1

1. Weather for a City

The functionality for this page should be split into multiple user stories.

GET /api/v1/forecast?location=denver,co
Content-Type: application/json
Accept: application/json
Response:

There is room for personal preference for this response body. Use the mock ups to see what data is required on the front end to decide what you would like to include in your response. If you’d like more of a challenge, you might consider using Fast JSON API and consider trying to stick to the JSON 1.0 spec.

Requirements:

Needs to pull out the city and state from the GET request and send it to Google’s Geocoding API to retrieve the lat and long for the city (this can be its own story). Use of the Google Geocoding API is a hard requirement.
Retrieve forecast data from the Darksky API using the lat and long

-------------------------------------------

1. Part Two - Background Image for a City

GET /api/v1/backgrounds?location=denver,co
Content-Type: application/json
Accept: application/json
Response:

This will search the Flickr API or any other images API for images associated with the location. This may not return images as intended, you can feel free to add search terms to your query to the Flickr API such as Parks or nature or skyline or whatever in order to return more appropriate images.
---------------------------------------------------

Part Three - Account Creation

POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password"
  "password_confirmation": "password"
}
Response:

status: 201
body:

{
  "api_key": "jgn983hy48thw9begh98h4539h4",
}
---------------------------------------------------


Part Four - Login

POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password"
}
Response:

status: 200
body:

{
  "api_key": "jgn983hy48thw9begh98h4539h4",
}

---------------------------------------------------


Part Five - Road Trip

POST /api/v1/road_trip
Content-Type: application/json
Accept: application/json

body:

{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}
---------------------------------------------------

REQUIREMENTS

API key must be sent

If no API key or an incorrect key is provided return 401 (Unauthorized)

You will use the Google Directions API: https://developers.google.com/maps/documentation/directions/start in order to find out how long it will take to travel from the two locations, and then deliver the weather forecast for the hour of arrival.

For example, Denver to Pueblo would take two hours.
You will deliver a forecast two hours in the future that includes the temperature and summary, and estimated travel time.

The structure of the response is up to you, but should be JSON API 1.0 Compliant.
