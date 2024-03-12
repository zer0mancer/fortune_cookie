class Fortune
  attr_accessor :omen, :fortune,
   #:lucky_numbers, :langauge

  def initialize
    @omen = omen
    @fortune = fortune

    #Create these later
    #@lucky_numbers = lucky_numbers
    #@langauge = langauge
  end

  def start
    puts "Welcome to the year 2052. The world is now sad and dark all the time. People barely see the sun. They are generally unhappy here. They work hard day in and day out hoping for some luck to come their way. This is where you come along."
    puts "You are a Fortune creator. The most important role in society. You can crush someone's hopes and dreams or you can bring them joy and happiness to hold them over until the Sun decides to shine on them again."
    puts "Let's make a fortune:"
      loop do 
        puts "\n"
        pp "Select what fortune will be in your cookie:"
        pp "1: "Write a fortune for cookie"
        pp "2: "View Fortunes needed to be wrapped inside a cookie"
        pp "3: "Clock out for the day"
        selection = gets.chomp.to_i
        pp "\n"
        pp "\n"
          case
          when 1
            write_a_fortune
          when 2
            fortune_selection
          when 3
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
  @fortunes < Fortune.new(omen, fortune)
  pp "Your Fortune has been accepted and stored for safekeeping until we deliver it to the chosen one"
end
