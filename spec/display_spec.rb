require 'display'

describe Display do

  let(:display) { Display.new }
  let(:date) { Time.now.strftime("%d/%m/%Y") }

  it 'prints the statement header' do
    expect(display.print).to eq "date || credit || debit || balance"
  end 

end 