class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "A new file was created: #{filename}, user: #{@username}, time: #{time}."
    end
    def Computer.get_users
        return @@users
    end
end
my_computer = Computer.new("Frances", 1234)
my_file = my_computer.create("somefile")