require 'spec_helper'

describe HelloWorld do
  it "should greet by name" do
    expect(described_class.greeting("world")).to eq('Hello world')
  end
end
