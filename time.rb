

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

end