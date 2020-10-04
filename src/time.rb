

class Appframe

    attr_accessor :productivity_rating, :focus_tips, :logs
    
    attr_reader :username


    def initialize(username)
        
        #Assigns name from login to app
        
        @username = username

        #Initializes array for us in main feature

        @productivity_rating = []

        #Array of tips for use during runtime

        @focus_tips =  [
            'Try cleaning up the space you work with. A cluttered space leads to a cluttered mind.',
            'Try taking regular breaks throughout the day to break up the time.',
            'Keep a diary of your thoughts and ideas for later reference. Focus on the present.',
            'Eliminate some of the distractions in your workspace.',
            'Plan the day ahead of you!',
            "Some days are just better than others, don't beat yourself up!",
            'Create systems that work for you, build these into habits and you will see immense change!',
            'Break up your day with some time outside! Fresh air and sunlight when possible are imporant.',
            'Try taking a few breaks from work throughout the day to do something you really enjoy.', 
            'Remember, sleep is very important for proper brain function. A regular sleeping pattern is key to success!'
            ]

        #Empty array for diary section

        @logs = []

    end

    def sleep_clear
        #Little method for reduced clutter - regarding clean view
        sleep (2)
        system ("clear")
    end
    def invalid_choice
        #Another method for reduced clutter - regarding invalid inputs
        system("clear")
        puts "Invalid entry. Please use numbers to indicate your choices unless instructed otherwise."
        sleep_clear
    end

    def menu_screen
        #Main menu to let users access features.
        choice = false

        while !choice

            puts "Hello #{@username}. Welcome to your future. Enter a number to pick from the list below to begin.\n1.Productivity tracker\n2.Helpful hints\n3.Diary\n4.Exit Program\n"
            
            choice = gets.chomp.downcase

            if choice == "1" || choice == "productivity"
                system("clear")
                productivity_plan

            elsif choice == "2" || choice == "help"
                system("clear")
                helpful_hints
             
            elsif choice == "3" || choice == "diary"
                system("clear")
                diary_log
               
            elsif choice == "4" || choice == "exit"
                system("clear")
                puts"Thanks for dropping by!"
                sleep_clear
                exit
            else
                invalid_choice
                menu_screen
            end
        end
    end

    def productivity_plan
        #Main feature 

        system("clear")
    
        time_frame = false
        #If the array is empty, asks the first question.
        if @productivity_rating.length == 0
            puts "How many hours of your day do you want to spend doing things you consider productive?"

            while !time_frame

               time = gets.chomp.to_i

                    #Evaluate integer value to give feedback, following sections check if input is valid and reasonable.
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
                        invalid_choice
                        productivity_plan
                    end
        
                 #Takes integer input and stores in the empty array  
                @productivity_rating.push(time)
                menu_screen
            end  

        #If the array is not empty, asks the second question.
        elsif @productivity_rating.length == 1
            puts "How many hours did you manage to spend being productive today?"
            #Store second value in array for comparison
            time2 = gets.chomp.to_i

            @productivity_rating.push(time2)

            puts "Your goal for this session was #{@productivity_rating[0]}"
                #Provides feedback on users' set goal and clears array for next use.
                if @productivity_rating[1] > @productivity_rating[0]
                    puts "Well done, you exceeded your goal for today! Keep up the good work, but dont go too hard or else you may burn out!"
                    sleep(2)
                    sleep_clear
                    @productivity_rating.clear
                    menu_screen
                elsif  @productivity_rating[1] == @productivity_rating[0]
                    puts "Good job, you hit your target for today!"
                    sleep(2)
                    sleep_clear
                    @productivity_rating.clear
                    menu_screen
                elsif @productivity_rating[1] < @productivity_rating[0]
                    puts "You didnt hit your productivity goal for today. Take this tip for next time."
                    random_hint
                    sleep(10)
                    system("clear")
                    @productivity_rating.clear
                    menu_screen
                else 
                    invalid_choice
                end

            
        end   
  
        

       

    end

    def helpful_hints
        #Access to the hints that should help productivity.
           puts "Welcome to the helpful hints section where we provide tips to help you be productive!\n Would you like a random tip or would you like to view the entire list?\n1.Random tip.\n2.View list.\n3.Back to main menu."

           hints_choice = gets.chomp
           
            if (hints_choice == "1")
                system("clear")
                random_hint
                sleep_clear
                helpful_hints
            elsif (hints_choice == "2")
                system("clear")
                puts focus_tips 
                puts "\n\n"
                helpful_hints
            elsif (hints_choice == "3")
                system("clear")
                menu_screen
            else
                invalid_choice
                helpful_hints
            end


    end
    
    
    def random_hint
        ##Random hint accessor for use in main feature and hint section.

        random = Random.new

        puts "\n#{focus_tips[random.rand(1..@focus_tips.length)]}"
        
    end

    def diary_log
        #Diary space for user to log daily activities.
        puts "Welcome to your personal diary space. \nWould you like to view past dairies or write a new one?
        \n 1. Write new entry  \n 2. View old entries \n 3. Back to main menu. "

        diary_choice = gets.chomp
        
        if (diary_choice =="1" || diary_choice == "new")
            #Takes date and time and user input and logs in the empty array initialized.
            system("clear")
            puts("Begin your diary entry..\n (Write in whatever format you would like to.\n)")
            new_entry = gets.chomp()
            timestamp = Time.now

            new_entry = timestamp.to_s + " " + new_entry

            @logs.push(new_entry)
            puts "\nEntry successful."
            sleep_clear

        elsif(diary_choice == "2" || diary_choice == "view")
            #If array is empty when chosen, explains this to user. If array populated, displays contents.
                if(logs == [])
                    system("clear")
                    puts "There are no previous entries."
                    sleep_clear
                else
                     system("clear")
                    #Uses a loop to show diary entries in order.
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
           invalid_choice
           diary_log
        end

        diary_log
    end

    

end 

def login_check
    #Login section which locks the app from those who dont have the credentials provided in README
    profiles = 
    {
    :Jackson => "jackson123",
    :admin => "admin"
    }

    entry = false

        while (!entry)
         puts ( "Hello! Please enter your username: (Hint: Check the README)")
           id = gets.chomp
         puts ( "Please enter your password: HINT: Check the README)")
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

#Class and function calls.

login_check
user = Appframe.new (@username)
user.menu_screen