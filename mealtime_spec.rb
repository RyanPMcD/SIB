describe Mealtime do
  before { Timecop.freeze(time) }
  after { Timecop.return }

  describe '.what_to_eat?' do
    context 'in the morning' do
      let(:time) { Time.parse('2013-11-13 07:00:00') }
      it "returns 'breakfast'" do
        expect(Mealtime.what_to_eat?).to eq('breakfast')
      end
    end

    context 'outside of a mealtime' do
      let(:time) { Time.parse('2013-11-13 20:00:00') }
      it "returns 'snack'" do
        expect(Mealtime.what_to_eat?).to eq('snack')
      end
    end
  end
end
