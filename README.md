# bookmark-manager-L-A

Requirements
------------

Show a list of bookmarks
------------------------
As a user i want a quick way to see a list of all the bookmarks

--- Model ---
- Client sends get request to the controller,
- Controller gets the bookmarks from the model,
- Model returns the bookmarks to the controller,
- Controller sends the bookmarks to the view(webpage),
- The webpage is then returned to the controller which is then returned to the client.

Add new bookmarks
-----------------
As a user i want a way to create a new bookmark so i can go back to a page

--- Model ---
- Client sends post request to the controller,
- Controller posts a new bookmark to the model,
- Model adds the new bookmark to the database,
- Controller get the new bookmark and send it to the views(webpage) from the database,
- The webpage is then returned to the controller which is then returned to the client.

Delete bookmarks
----------------
As a user i want to be able to get rid of bookmarks that i don't visit anymore


Update bookmarks
----------------
As a user i want to be able to change the web address associated with the current book mark
If anything needs amending


Comment on bookmarks
--------------------
As a user i want to make comments on existing bookmarks


Tag bookmarks into categories
-----------------------------
As a user i want to be able to sort my bookmarks into categories


Filter bookmarks by tag
-----------------------
As a user i want to be able to see all the bookmarks that are associated by a specific tag


Users are restricted to manage only their own bookmarks
-------------------------------------------------------
As a user i only want to be able to change my bookmarks only
No one else's.

How to set up the database
--------------------------

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

How to set up a testing database
--------------------------

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager_test;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

Useful Commands
---------------

Using SELECT to view the table
Using INSERT to add data to a table
Using SELECT to query data
Using DELETE to delete data
Using UPDATE to update data


* means everything in that area
LIMIT shortens the results to the top then however many after the LIMIT
