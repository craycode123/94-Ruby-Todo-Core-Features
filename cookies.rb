class Cookie
  attr_accessor :status, :type, :bake_time
  def initialize(status = :doughy, type = nil, bake_time = nil)
    @status = status
    @type = type
    @bake_time = bake_time
  end
end

class Oven
  attr_reader :cookie

  def initialize
    @cookie = nil
  end

  def add_cookie
    @cookie = Cookie.new
    puts "What type of cookie would you like to bake?"
    @cookie.type = gets.chomp
    puts "How long to get it perfectly done?"
    @cookie.bake_time = gets.chomp.to_i
    puts "All set! Let's start baking!\n\n"
  end

  def bake_cookie
    puts "How long would you like to bake your cookie?"
    input = gets.chomp.to_i
    @cookie.bake_time -= input
    if @cookie.bake_time < 0
      puts "Are your sure? That might burn your cookie. (1-proceed, 0-amend)"
      ans = gets.chomp.to_i
      if ans == 1
        @cookie.status = :burned
        puts "Your #{@cookie.type} is #{@cookie.status}!"
      else
        bake_cookie
      end
    elsif @cookie.bake_time > 0
      @cookie.status = :doughy
      puts "Your #{@cookie.type} is undercooked. Would you like to continue baking?"
      bake_cookie
    else
      @cookie.status = :ready
      puts "Your #{@cookie.type} is ready. Enjoy!"
    end
  end

  def run
    add_cookie
    bake_cookie
  end
end

oven = Oven.new
oven.run
