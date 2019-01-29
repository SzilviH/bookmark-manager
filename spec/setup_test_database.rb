# Setups up a clean database for testing
require 'pg'

def setup_test_database

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # TRUNCARE empties the database
  connection.exec ("TRUNCATE bookmarks;")

  # Adds three websites to the test database
  connection.exec ( "INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');" )
  connection.exec ( "INSERT INTO bookmarks VALUES (2, 'http://destroyallsoftware.com');" )
  connection.exec ( "INSERT INTO bookmarks VALUES (3, 'http://www.google.com');" )

end
