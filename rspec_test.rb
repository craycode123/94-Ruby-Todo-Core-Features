describe "destructive_methods.rb" do
  describe "#destroy_message" do
    context "when arguement \"first_half: second_half\"" do
      let(:arg){ "first_half: second_half" }

      it "returns \"first_half:\"" do
        expect(destroy_message(arg)).to eq "first_half:"
      end
    end

    context "when arguement \"first_half\"" do
      let(:arg){ "first_half" }

      it "returns \"first_half\"" do
        expect(destroy_message(arg)).to eq arg
      end
    end

    it "does not change the original string" do
      arg = "temp: temp2"
      string = arg.dup
      destroy_message(arg)
      expect(arg).to eq string
    end
  end

  describe "#destroy_message!" do
    context "when arguement \"first_half: second_half\"" do
      let(:arg){ "first_half: second_half" }

      it "it will change the original string to \"first_half:\"" do
        string = arg.dup
        destroy_message!(arg)
        expect(arg).not_to eq string
        expect(arg).to eq "first_half:"
      end
    end

    context "when arguement \"first_half\"" do
      let(:arg){ "first_half" }

      it "returns nil" do
        expect(destroy_message!(arg)).to eq nil
      end

      it "does not change the original string" do
        string = arg.dup
        destroy_message!(arg)
        expect(arg).to eq string
      end
    end
  end
end
