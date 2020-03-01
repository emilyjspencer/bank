require 'bankaccount'

describe BankAccount do
  let(:bankaccount) { BankAccount.new }

  describe '#deposit' do
    it 'allows the account holder to withdraw money' do
      expect { bankaccount.deposit(20) }.to change{bankaccount.balance}.by(20)
    end 
  end 


end 