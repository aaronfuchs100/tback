class User < ActiveRecord::Base
has_many :items

def self.text_search(query)
   self.where("name @@ :q or phone @@ :q", :q => query)
 end

end