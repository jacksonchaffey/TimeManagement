

class Login

    attr_accessor :productivity_rating, :focus_tips, :logs
    
    attr_reader :username


    def initialize(username)

        @username = username

        @productivity_rating = []

        @focus_tips =  ['a', 'b', 'c']

        @logs = []

    end

    def menu_screen

        choice = false

        while !choice

            puts "Hello #{@username}. Welcome to productively, please pick from the list below to begin.\n"
            puts "1.Productivity tracker\n"
            puts "2.Helpful hints\n"
            puts "3.Exit Program\n"
            puts @productivity_rating
            
            choice = gets.chomp.downcase

            if choice == "1" || choice == "productivity"
                productivity_plan
                choice = true

            elsif choice == "2" || choice == "help"
                helpful_hints
                choice = true
            elsif choice == "3" || choice == "exit"
                "Thanks for dropping by!"
                exit
            else
                puts "Please choose a valid option from the list."
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
                sleep (1)

            elsif time>=16
                system("clear")
                puts "\n\n We reccomend an average of 8 hours of sleep to ensure maximum productivity.\n Please reconsider how much time you want to spend being productive today."
                sleep (2)
                productivity_plan
            else 
                system("clear")
                puts "Using numbers, please indicate how many hours of the day you want to spend being productive."
            end

            @productivity_rating.push(time)
            
            if @productivity_rating.length == 1
                menu_screen

            elsif @productivity_rating.length > 1
                productivity_checker
                menu_screen
             end
        end  

       

    end

    # def productivity_checker(time)

    #     if time[-1] < time[-2]
    #         puts "Not quite what you wanted to achieve today but thats ok!"
    #         puts "\n\n#{focus_tips[random.rand(1..@focus_tips.length)]}"
    #         menu_screen
    #     elsif time[-1] == time[-2]
    #         puts "Well Done!"
    #         menu_screen
    #     else 
    #         puts "Test3"
    #         menu_screen
    #     end
    # end
   
    def random_hint

        random = Random.new

        puts "\n#{focus_tips[random.rand(1..@focus_tips.length)]}"
        sleep(2)
        system("clear")
        menu_screen
    end
end 

user = Login.new (@username)
user.menu_screen