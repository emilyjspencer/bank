require 'bankaccount'

describe BankAccount do
  let(:bankaccount) { BankAccount.new(display) }
  let(:display) { double :display, print: "date || credit || debit || balance" }
  let(:transaction) { double :transaction, see_transactions: transactions}
  let(:transactions) { [20, 10, 30] }
  let(:date) { Time.now.strftime("%d/%m/%Y") }

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

  describe '#print_header' do
    it 'can print the statement header' do
      expect(bankaccount.print_header).to eq "date || credit || debit || balance"
    end
  end 

  describe '#see_transactions' do
    it 'can see transactions' do
      bankaccount.deposit(20)
      bankaccount.deposit(10)
      bankaccount.deposit(30)
      expect(bankaccount.see_transactions).to eq [20, 10, 30]
    end 
  end 
  


end 