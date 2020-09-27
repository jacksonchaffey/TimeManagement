

class Login

    attr_accessor :productivity_rating, :focus_tips, :logs
    
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
            puts "Hello #{@username}. Welcome to productively, please pick from the list below to begin.\n"
            puts "1.Productivity tracker\n"
            puts "2.Helpful hints\n"
            
            choice = gets.chomp.downcase

            if choice == "1" || choice == "productivity"
                productivity_plan
                choice = true
            else
                puts "Please choose an option from the list."
            end
        end
    end

    def productivity_plan
        
        system("clear")
    
        time_frame = false

        puts "How many hours of your day do you want to spend doing things you consider productive?"

        while !time_frame
            time = gets.chomp.to_i

            if time >0 and time <16
                valid_level = true
                puts "Good luck today!"

            elsif time>16
                system("clear")
                puts "\n\n We reccomend an average of 8 hours of sleep to ensure maximum productivity.\n Please reconsider how much time you want to spend being productive today."
            else 
                system("clear")
                puts "Using numbers, please indicate how many hours of the day you want to spend being productive."
            end
        end

        @productivity_rating.push(time)

        if @productivity_rating.length == 1
            main_menu
        end

    end
        
end 

user = Login.new (@username)
user.menu_screen