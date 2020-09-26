

class Login

    attr_accessor :productiity_rating, :focus_tips, :logs
    
    attr_reader :username


    def initialize(username)

        @username = username

        @productivity_rating = []

        @focus_tips =  [
        ]

        @logs = []

    end

    def menu_screen

        choice = false

        while !choice
            puts "Hello #{@username}\n"
            puts "1.Productivity tracker"
            
            choice = gets.chomp.downcase

            if choice == "1" || choice == "productivity"
                puts "Be productive"
                choice = true
            else
                puts "Please choose an option from the list."
            end
        end
    end

end

user = Login.new (@username)
user.menu_screen