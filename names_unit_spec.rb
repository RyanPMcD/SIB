describe NamesController do
  describe "GET 'show'" do
    context "when a user is present" do
      let(:user) { FactoryGirl.build(:user, :name => 'Vincent') }
      before { User.stub(:find_by) { user } }

      it "retrieves the name" do
        get 'show', :id => 'anything'
        expect(assigns(:name)).to eq('Vincent')
      end
    end

    context "when no user is present" do
      before { User.stub(:find_by) { nil } }

      it "retrieves the name" do
        get 'show', :id => 'anything'
        expect(assigns(:name)).to eq('unknown')
      end
    end
  end
end
