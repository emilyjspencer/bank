require 'bankaccount'

describe BankAccount do
  let(:bankaccount) { BankAccount.new }

  describe '#deposit' do
    it 'allows the account holder to deposit money' do
      expect { bankaccount.deposit(20) }.to change{bankaccount.balance}.by(20)
    end 
  end 

  describe '#withdraw' do
    it 'allows the account holder to withdraw money' do
      bankaccount.deposit(20)
      expect { bankaccount.withdraw(10) }.to change{bankaccount.balance}.by(-10)
    end 
  end 


end 