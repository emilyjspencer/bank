require 'transaction'

describe Transaction do

  let(:date) { Time.now.strftime("%d/%m/%Y") }
  let(:transaction) { Transaction.new(26/02/2020, 20, 20) }


  it 'has a date attribute' do
    expect(transaction.date).to eq 26/02/2020
  end 

  it 'has an amount attribute' do
    expect(transaction.amount).to eq 20
  end 

  it 'has a balance attribute' do
    expect(transaction.balance).to eq 20
  end 
end 