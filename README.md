# eezy-test

This is my implimentation of the following eezy-test.

The only special deployment instruction is the 500px api key must be set as the evniorment variable FIVEHUNDREDPXKEY on any machine running this code.

If you wish to tally the click counts you may run the following at the rails console.
`Photo.print_click_count search_term` where search_term is the term you with to tally.

# Eezy Applicant Test

## Instructions
The application we would like you to build is a simple rails application that can consume the 500px REST api based
on user input, present the paginated results to the user in a grid format, and track the most popular items for a given query.

A mockup has been provided as to how the user interface should look. Follow it carefully.

## Rules

1. The root page of the application should present the user with a search box
2. Entering a term in the search box and pressing enter should make a get request to /search/:search-term without using ajax.
3. Spaces in the search term will be replaced with dashes.
4. The 500px api will be consumed by ruby, not by javascript.
5. The results of the 500px response should only be displayed as a response to a normal get request, not an ajax call.
6. You may not use a 500px specific gem to consume the api, you are allowed to use an http library gem.
7. A mockup of both the root path, and search results page are included in the repository. Follow them carefully.
8. The views should be responsive and support both mobile and desktop gracefully (Feel free to use a javascript library to get the grid to match the mockup).
9. When a user clicks on a search result they should be taken to the results page on 500px
10. The application should keep track of which search results are clicked on a per query basis, and store it in the database for later reporting. (i.e For term dog result with external_id 5 was clicked 10 times and resutl with external_id 52 was clicked 1 time. For term big dog resutl with external_id 5 was click on 3 times.)
11. It is not neccessary to provide an interface to view the click tracking data other than the rails console.
12. The application should have 100% test coverage
13. You may use whatever database, testing framework, and templating language you wish.
