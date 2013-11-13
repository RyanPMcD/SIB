require 'spec_helper'

describe "name requests" do
  let(:user) { FactoryGirl.create(:user, :name => 'Vincent') }

  describe '#show' do
    it 'renders a page containing the name' do
      get "names/#{user.id}"

      expect(response.status).to eq(200)
      response.status.should == 200

      #expect(JSON.parse(response.body)).to eq({'name' => 'Vincent'})
      expect(response.body).to include("Name: Vicent")
    end
  end
end
