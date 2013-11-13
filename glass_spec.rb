require 'spec_helper'

describe Glass do
  describe '.fill' do
    let(:glass) { Glass.fill("water") }

    it "makes a new glass" do
      expect(glass.liquid).to eq("water")
    end
  end
end
