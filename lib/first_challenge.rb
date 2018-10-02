def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |name,data|
    if name == "Freddy Mercury"
      "Freddy Mercury".each do |detail, val|
        if detail == :favorite_icecream_flavors
          data.each do |flavor|
            if flavor == "strawberry"
              data.delete(flavor)
            end
          end
        end
      end
    end
  end

return contacts
  #remember to return your newly altered contacts hash!
  contacts
end

