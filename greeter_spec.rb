describe Greeter do
  let(:greeter) { Greeter.new(dict) }
  let(:dict) do
    {
      :english => 'Hello',
      :spanish => 'Hola',
    }
  end

  describe '#greet' do
    subject { greeter.greet('Dave', lang) }

    context 'when passed a language in the dictionary' do
      let(:lang) { :spanish }

      it { should == 'Hola Dave' }
    end

    context 'when passed a language not in the dictionary' do
      let(:lang) { :japanese }

      it { should == "Dave, I don't know what to say." }
    end
  end
end
