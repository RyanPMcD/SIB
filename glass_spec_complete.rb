require 'spec_helper'

describe Glass do
  describe '.fill' do
    context "when the glass is filled with something" do
      let(:glass) { Glass.fill("water") }

      it "makes a new glass" do
        expect(glass.liquid).to eq("water")
      end
    end

    context "when the glass is filled with nothing" do
      let(:glass) { Glass.fill }

      it "doesn't make a new glass" do
        expect { glass }.to raise_error
      end
    end
  end
end
