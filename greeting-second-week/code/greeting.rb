
def greet(name)
  Greet.say_hello_to(name)
end

class Greet
  HELLO = 'Hello'
  DEFAULT_NAME = 'my friend'

  def self.say_hello_to(name)
    new(name).do
  end

  def initialize(name)
    @name = name || DEFAULT_NAME
  end

  def do
    return shout_hello if uppercase?

    say_hello
  end

  private

  def uppercase?
    @name == @name.upcase
  end

  def no_name?
    @name.nil?
  end

  def shout_hello
    "#{HELLO.upcase} #{@name}!"
  end

  def say_hello
    "#{HELLO}, #{@name}."
  end
end
