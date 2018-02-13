require_relative '../code/greeting'

describe 'Greetings' do
  it 'says hello to a name' do
    name = 'Bob'

    greetings = greet(name)

    expect(greetings).to eq("Hello, #{name}.")
  end

  it 'says hello friend if no name' do
    no_name = nil

    greetings = greet(no_name)

    expect(greetings).to eq("Hello, my friend.")
  end

  it 'shouts hello to a name if the name is shouted' do
    shouted_name = 'JERRY'

    shouted_greeting = greet(shouted_name)

    expect(shouted_greeting).to eq("HELLO #{shouted_name}!")
  end
end
