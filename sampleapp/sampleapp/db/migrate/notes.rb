Rails Short Cuts

MAKE A NEW PROJECT WITH USERS
rails new test_project
cd test_project
rails g model User first_name:string last_name:string email:string password:string age:integer
rake db:migrate
rails c
EXAMPLE 1
user1 = User.new
user1[:age] = 40
user1[:first_name] = "Eddard"
user1[:last_name] = "Stark"
user1.save
EXAMPLE2
user2 = User.new(first_name:"Cersei", last_name:"Lannister", email:"queen@landing.com", age:35)
user2.save
EXAMPLE3
User.create(first_name:"Jon", last_name:"Stark", email:"jon@thewall.com", age:17)

Getting all
User.all

Hirb
Hirb.enable

Finding

user1 = User.find(2)
User.update(3, first_name: "Greg", last_name: "Smith")

migrate

rake db:migrate
rake db:rollback - rollback the change; do this if you made a mistake
rake db:rollback STEP=3 - rollback the last 3 changes made in the migrations.

    New Migration File
rails g migration [name of the migration]




Different data types
1. string - for small data types (less than 256 characters)
2. text - for longer text (more than 256 characters)
3. integer - for whole numbers
               4. float - for decimals
               5. datetime and timestamp - store the date and time into a column
                 6. date and time - store either the date only or time only (not used very often)
                 7. binary - for storing data such as images, audio, or movies (not used very often)
                               8. boolean - for storing true or false values


                               Functions
                               1. create_table(name, options)
                               2. drop_table(name)
                               3. rename_table(old_name, new_name)
                               4. add_column(table_name, column_name, type, options)
                               5. rename_column(table_name, column_name, new_column_name)
                               6. change_column(table_name, column_name, type, options)
                               7. remove_column(table_name, column_name)
                               8. add_index(table_name, column_name, index_type)
                               9. remove_index(table_name, column_name)
                               10. add_reference(table_name, referenced_model, index:true)