describe MyRange do
  describe ".within_range" do
    let(:range) { MyRange.new(1,10) }

    context "normal conditions" do
      context "given a value within the range" do
        expect(range.with_range(3)).to be_true
      end
    end

    context "edge/boundary conditions" do
      context "with a value just outside the range" do
        context "at the lower end" do
          expect(range.with_range(0)).to be_false
        end

        context "at the higher end" do
          expect(range.with_range(11)).to be_false
        end
      end

      context "with a value just inside the range" do
        context "at the lower end" do
          expect(range.with_range(1)).to be_true
        end

        context "at the higher end" do
          expect(range.with_range(10)).to be_true
        end
      end
    end

    context "error conditions" do
      context "with a value that isn't a number" do
        expect(range.within_range("a")).to raise_error
      end
    end

    context "overtesting/testing the framework" do
      context "#min_range=" do
        before do
          range.min_range = 2
        end

        it "sets the min_range" do
          expect(range.min_range).to eq(2)
        end
      end

      context "#max_range" do
        it "returns the max_range" do
          expect(range.max_range).to eq(10)
        end
      end
    end
  end
end
