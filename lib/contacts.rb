require 'pry'


# top level of the Hash 
# where the keys should be the person and the values should be a Hash of details about the person.

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
# def remove_strawberry(contacts)
#   contacts.each do |person, contact_details_hash| # top level iteration
#     binding.pry # learn test in terminal to use. in pry prompt, type block variable names to see if they are what we expect them to be
#   end 
# end

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash| # iterate through first level
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data| # iterate through second level
        if attribute == :favorite_ice_cream_flavors # locate the element we're looking for # after this ;ine and running pry, data will be ice cream flavors
        #binding.pry # verify that block variables above are what we expect them to be if code ran right
        data.delete_if {|ice_cream| ice_cream == "strawberry"} # use .delete_if and set block variable to ice creama dn strawberry which is what we want to delete
        # data is now the array containing Freddy's favorite ice cream flavors
        # delete_if will iterate through the array, check each element to see if it is equal to "strawberry", and delete the key/value pair if the block returns true
        end   # exit! in pry to exit out of loops
      end
    end
  end
end





# name your variables to accurately reflect the data they represent. For now, when the value we're iterating over is another hash, we will explicitly add a _hash to the end of the variable name

########## Iterate over the contacts hash and when you reach the key :favorite_ice_cream_flavors, remove "strawberry" from the Array of Freddy's favorite ice cream flavors.


# There are at least two ways you can accomplish this, and for this codealong, we'll work with the second way.

#     1. You can directly iterate over the hash that is the value of the "Freddy Mercury" key by calling an enumerator method in contacts["Freddy Mercury"].

#     2. You can set a conditional to iterate through the hash for Freddy Mercury only; when you reach the appropriate level, check to see if the key == ("is equal to") :favorite_ice_cream_flavors. If it is, check to see if the array of flavors contains "strawberry". If it does, then delete it from the Array.
