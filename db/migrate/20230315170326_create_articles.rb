# This line defines a new migration class that inherits from ActiveRecord::Migration
class CreateArticles < ActiveRecord::Migration[7.0]
  # This method defines the migration change, which creates a new database table called "articles"
  def change
    # This line creates a new table with the name "articles"
    create_table :articles do |t|
      # These lines define two columns in the "articles" table,
      # one called "title" that is a string data type
      t.string :title
      # and another called "description" that is a text data type
      t.text :description
      
      # These lines create two columns that store the creation and update timestamps
      # for each record in the "articles" table
      t.timestamps
    end
  end
end


# Since we now have a db component to our application with the articles table,
# we will need to run migrations in production so the production articles table is created.
# To run migrations at heroku, you can use the following command: heroku run rails db:migrate