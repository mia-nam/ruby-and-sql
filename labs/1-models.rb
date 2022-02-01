# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)

# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

apple = Company.where({ name:"Apple, Inc."})[0]
puts apple.id
apple_id = apple.id
values = { first_name: "Craig",
            last_name: "Federight",
            email:"craig@apple.com",
            phone_number: "888-555-1212",
            company_id: apple_id
        }
contact = Contact.new(values) #insert new valeus to contact
contact.save

amazon = Company.where({ name:"Aamazon.com, Inc."})[0]
puts amazon.id
amazon_id = amazon.id

contact = Contact.new
contact.first_name = "Andy"
contact.last_name = "Jassy"
contact.email = "andy@amazon.com"
contact.phone_number = "888-555-1313"
contact.company_id = amazon_id
contact.save

contact = Contact.new
contact.first_name = "Tim"
contact.last_name = "Cook"
contact.email = "tim@apple.com"
contact.phone_number = "888-555-1111"
contact.company_id = apple_id
contact.save

tesla = Company.where({ name:"Tesla, Inc."})[0]
puts tesla.id
tesla_id = tesla.id

contact = Contact.new
contact.first_name = "Elon"
contact.last_name = "Musk"
contact.email = "elon@tesla.com"
contact.phone_number = "888-999-9999"
contact.company_id = tesla_id
contact.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "There are #{Contact.all.count} contacts"
all_contacts = Contact.all


for x in all_contacts
    puts "#{x.first_name} #{x.last_name} - #{x.email}"

end