

class Login

    attr_accessor :productivity_rating, :focus_tips, :logs
    
    attr_reader :username


    def initialize(username)

        @username = username

        @productivity_rating = []

        @focus_tips =  [
            'Break up your day with some time outside! Fresh air and sunlight are imporant.',
             'Try taking a few breaks from work throughout the day to do something you really enjoy.', 
             'Remember, sleep is very important for proper brain function. A regular sleeping pattern is important!',
            ]

        @logs = []

    end

    def sleep_clear
        sleep (2)
        system ("clear")
    end

    def menu_screen

        choice = false

        while !choice

            puts "Hello #{@username}. Welcome to productively, please pick from the list below to begin.\n"
            puts "1.Productivity tracker\n"
            puts "2.Helpful hints\n"
            puts "3.Diary"
            puts "4.Exit Program\n"
            
            choice = gets.chomp.downcase

            if choice == "1" || choice == "productivity"
                system("clear")
                productivity_plan
                

            elsif choice == "2" || choice == "help"
                sleep_clear
                helpful_hints
             
            elsif choice == "3" || choice == "diary"
                sleep_clear
                diary_log
               
            elsif choice == "4" || choice == "exit"
                "Thanks for dropping by!"
                exit
            else
                system("clear")
                puts "Please choose a valid option from the list."
                sleep_clear
                menu_screen
            end
        end
    end

    def productivity_plan
        
        system("clear")
    
        time_frame = false

        if @productivity_rating.length == 0
            puts "How many hours of your day do you want to spend doing things you consider productive?"

            while !time_frame

               time = gets.chomp
                if time.scan(/\D/).empty?

                    time = time.to_i

                    if time >0 and time <16
                       time_frame = true
                        puts "Good luck today!"
                       sleep_clear

                    elsif time>=16 and time <=24
                        system("clear")
                        puts "We reccomend an average of 8 hours of sleep per day to ensure maximum productivity.\n Please reconsider how much time you want to spend being productive today."
                        sleep (2)
                        sleep_clear
                        productivity_plan

                    elsif time >24
                        system ("clear")
                        puts "There just isn't enough hours in a day is there?"
                        sleep_clear
                        productivity_plan
                    else 
                        sleep_clear
                        puts "Using numbers, please indicate how many hours of the day you want to spend being productive."
                        sleep_clear
                        productivity_plan
                    end
                end

                @productivity_rating.push(time)
                menu_screen
            end  
       
        elsif @productivity_rating.length == 1
            puts "How many hours did you manage to spend being productive today?"
            
            time2 = gets.chomp.to_i

            @productivity_rating.push(time2)

                if @productivity_rating[1] > @productivity_rating[0]
                    puts "Well done, you exceeded your goal for today! Keep up the good work, but dont go too hard or else you may burn out!"
                    sleep_clear
                    @productivity_rating.clear
                    menu_screen
                elsif  @productivity_rating[1] == @productivity_rating[0]
                    puts "Good job, you hit your target for today!"
                    sleep_clear
                    @productivity_rating.clear
                    menu_screen
                else
                    puts "You didnt hit your productivity goal for today. Take this tip for next time."
                    sleep_clear
                    @productivity_rating.clear
                    menu_screen
                end

            
        end   
  
        

       

    end

    def helpful_hints

           puts "Welcome to the helpful hints section where we provide tips to help you be productive!\n Would you like a single random tip or would you like to view the entire list?\n1.Random tip.\n2.View list.\n3.Back to main menu."

           hints_choice = gets.chomp
           
            if (hints_choice == "1")
                random_hint
                sleep_clear
                helpful_hints
            elsif (hints_choice == "2")
                puts random_hint
                sleep_clear
                helpful_hints
            elsif (hints_choice == "3")
                sleep_clear
                menu_screen
            # puts focus_tips
            # sleep(2)
            # menu_screen
            end


    end
    
    
    def random_hint

        random = Random.new

        puts "\n#{random.focus_tips[random.rand(1..@focus_tips.length)]}"
        sleep_clear
        menu_screen
    end

    def diary_log

        puts "\nWelcome to your personal diary space. \nWould you like to view past dairies or write a new one?
        \n 1. Write new entry  \n 2. View old entries \n 3. Back to main menu. "

        diary_choice = gets.chomp
        
        if (diary_choice =="1" || diary_choice == "new")
            system("clear")
            puts("Begin your diary entry..\n")
            new_entry = gets.chomp()
            timestamp = Time.now

            new_entry = timestamp.to_s + " " + new_entry

            @logs.push(new_entry)
            puts "\n Entry successful."
            sleep_clear

        elsif(diary_choice == "2" || diary_choice == "view")
                if(logs == [])
                    system("clear")
                    puts "\n There are no previous entries."
                else
                     system("clear")
    
                    i = 0
                    while i < @logs.length
                        puts "#{logs[i]}\n\n\n\n"
                        i+=1
                    end
                 end

        elsif(diary_choice == "3")
            system("clear")
            menu_screen
       
        else
            puts "Please choose an option from the list"
            sleep_clear
        end
        
        sleep(0.5)
        diary_log
    end

    

end 

def login_check

    profiles = 
    {
    :Jackson => "jackson123",
    :admin => "admin"
    }

    entry = false

        while (!entry)
         puts ( "Hello! Please enter your username")
           id = gets.chomp
         puts ( "Please enter your password")
           pw = gets.chomp
    
            if (id == "admin" && profiles[:admin] == pw)
                entry = true

           elsif (id == "Jackson" && profiles[:Jackson] == pw)
               entry = true
             
           else
                system ("clear")
                puts ("\nInvalid login ID or password, please try again.")
           end

        end

    @username = id
    system("clear")
end



login_check
user = Login.new (@username)
user.menu_screen