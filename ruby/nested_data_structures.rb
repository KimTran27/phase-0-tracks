=begin 
pseudocode
coffee shop =
Coffee shop structure hash

seating area- array
    booths
    tables
    stools
    
kitchen hash
    sink -empty array
    fridge -hash
    first shelf- array
        coffee
        wine
    secondshelf -array
        sandwiches
        salad
        apples
    cabinet - array 
=end


coffee_shop = {
    structure: {
        seating_area: ["booths", "tables", "stools"],
        kitchen: {
            sink: [],
            refridgeration: {
                first_shelf: ["cold brew coffee", "ice beverages", "wine"],
                second_shelf: ["sandwiches", "salads","wraps"]
            },

            stock_cabinet: ["milk", "coffee beans", "syrups"]

            }
        }
    }


p coffee_shop [:structure][:kitchen][:refridgeration][:first_shelf][2].upcase
# => "WINE"