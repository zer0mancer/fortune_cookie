class Fortune
  attr_accessor :omen, :fortune

  def initialize(omen, fortune)
    self.omen = omen
    self.fortune = fortune
  end

  def cookie
    "This cookie will bring you #{omen} luck. #{fortune}"
  end
end

class Fortune_Cookies
  #:lucky_numbers, :langauge

  def initialize
    @fortunes = []

    #Create these later
    #@lucky_numbers = lucky_numbers
    #@langauge = langauge
  end

  def intro
    "Welcome to the year 2052. The world is now sad and dark all the time. People barely see the sun. They are generally unhappy here. They work hard day in and day out hoping for some luck to come their way. This is where you come along."
  end

  def start
    puts "You are a Fortune creator. The most important role in society. You can crush someone's hopes and dreams or you can bring them joy and happiness to hold them over until the Sun decides to shine on them again."
    puts "\n"
    puts "Let's make a fortune:"
    loop do
      puts "\n"
      pp "What would you like to do, Fortune Maker?:"
      pp "1: Write a fortune for cookie"
      pp "2: View All Fortune Cookies ready to be "
      pp "3: Take a break from writing Fortunes and go eat cookies."
      pp "4: Send out a Fortune Cookie."
      selection = gets.chomp.to_i
      pp "\n"
      pp "\n"
      case selection
      when 1
        write_fortune
      when 2
        cookie_collection
      when 3
        deliver
      when 4
        pp "Until next time. We eagerly await our next meeting of adventure, Fortune Maker"
      break
      else
        puts "That selection is not available, but maybe in the next updated patch."
      end
    end
  end

  private

  def write_fortune
    pp "Are the stars aligning us with creating a good or a bad fortune?"
    omen = gets.chomp
    pp "What is the Fortune you are bestowing upon us, Maker?"
    fortune = gets.chomp
    @fortunes << Fortune.new(omen, fortune)
    pp "Your Fortune has been accepted and stored for safekeeping until we deliver it to the chosen one"
  end

  def cookie_collection
    if @fortunes.empty?
      puts "We are sold out of Fortunee Cookies. You need to make more."
    else
      @fortunes.each do |fortune|
        puts fortune.cookie
        puts "^^^This is your collection of Cookies with Fortunes^^^"
      end
    end
  end

  def deliver
    if @fortunes.empty?
      puts "There are no Fortunes To Give Away. You should create some first."
    else
      puts "Sending out a #{@fortunes.sample.omen} Fortune to somehow who deserves it:
      #{@fortunes.sample.fortune}"
    end
  end
end
