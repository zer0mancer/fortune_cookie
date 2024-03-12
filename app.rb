class Fortune
  attr_accessor :fortune, :lucky_numbers, :langauge

  def initialize
    @fortune = fortune
    @lucky_numbers = lucky_numbers
    @langauge = langauge
  end

  def app
    puts "Welcome to the year 2052. The world is now sad and dark all the time. People barely see the sun. They are generally unhappy here. They work hard day in and day out hoping for some luck to come their way. This is where you come along."
    puts "You are a Fortune creator. The most important role in society. You can crush someone's hopes and dreams or you can bring them joy and happiness to hold them over until the Sun decides to shine on them again."
    puts "Let's make a fortune:"
      loop do 
        puts "\n"
        pp "Select what fortune will be in your cookie:"
        pp "1: "
