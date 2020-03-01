class BankAccount

  attr_reader :balance, :display

  def initialize(display = Display.new)
    @balance = 0
    @display = display
  end 

  def deposit(amount)
    @balance += amount
  end 

  def withdraw(amount)
    @balance -= amount
  end 

  def print_header
    display.print 
  end 

end 