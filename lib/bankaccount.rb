require 'time'
require_relative 'display'
require_relative 'transaction'

class BankAccount

  attr_reader :balance, :display, :transaction, :transactions_log, :date, :amount

  def initialize(display = Display.new, transaction = Transaction.new(date, amount, balance))
    @balance = 0
    @display = display
    @transaction = transaction
    @transactions_log = []
  end 

  def deposit(amount)
    @balance += amount
    @transactions_log.push(amount)
  end 

  def withdraw(amount)
    @balance -= amount
    @transactions_log.push(amount)
  end 

  def print_header
    display.print 
  end 

  def see_transactions
    @transactions_log.each { |transaction| 
    puts transaction }
  end

end 