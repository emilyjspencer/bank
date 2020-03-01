require 'display'

describe Display do

  let(:display) { Display.new }

  it 'prints the statement header' do
    expect(display.print).to eq "date || credit || debit || balance"
  end 

end 